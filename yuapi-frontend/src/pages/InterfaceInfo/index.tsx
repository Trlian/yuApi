import { PageContainer } from '@ant-design/pro-components';
import {message, Card, Descriptions, Button, Form, Input, Spin, Divider} from 'antd';
import React, {useEffect ,useState} from 'react';
import {
  getInterfaceInfoByIdUsingGet, invokeInterfaceInfoUsingPost,
  listInterfaceInfoByPageUsingGet
} from "@/services/yuapi-backend/interfaceInfoController";
import {useParams} from "react-router";

/**
 * 主页
 * @constructor
 */
const Index: React.FC = () => {

  const [data, setData] = useState<API.InterfaceInfo>();
  const [invokeRes ,setInvokeRes] = useState<any>();
  const params = useParams();
  const [invokeLoading, setInvokeLoading] = useState(false);


  const loadData = async () => {
    if (!params.id) {
      message.error('参数不存在');
      return;
    }
    setInvokeLoading(true);         //正在加载
    try {
      const res = await getInterfaceInfoByIdUsingGet({
        id: Number(params.id),
      });
      setData(res.data);
    } catch (error: any) {
      message.error('请求失败，', + error.message)
    }
    const res = await listInterfaceInfoByPageUsingGet({

    });
    setInvokeLoading(false);         //加载完毕
  }

  useEffect(() => {
    loadData();
  }, [])

  const onFinish = async (values: any) => {
    if (!params.id) {
      message.error("参数不存在");
      return;
    }
    setInvokeLoading(true);

    try {
      const res = await invokeInterfaceInfoUsingPost({
        id: params.id,
        ...values,
      });
      setInvokeRes(res.data);
      message.success('请求成功');
    } catch (error: any) {
      message.error('操作失败' + error.message);
    }
    setInvokeLoading(false);
  }

  return (
    <PageContainer title="查看接口文档">
      <Card>
        {
          data ? (
            <Descriptions title={data.name} column={1} extra={<Button>调用</Button> }>
              <Descriptions.Item label="接口状态">{data.status ? '开启' : '关闭'}</Descriptions.Item>
              <Descriptions.Item label="描述">{data.description}</Descriptions.Item>
              <Descriptions.Item label="请求方法">{data.method}</Descriptions.Item>
              <Descriptions.Item label="请求参数">{data.requestParams}</Descriptions.Item>
              <Descriptions.Item label="请求头">{data.requestHeader}</Descriptions.Item>
              <Descriptions.Item label="响应头">{data.responseHeader}</Descriptions.Item>
              <Descriptions.Item label="更新时间">{data.updateTime}</Descriptions.Item>
              <Descriptions.Item label="创建时间">{ data.createTime }</Descriptions.Item>
          </Descriptions>
        ) : (
            <>接口不存在</>
        )}
      </Card>
      <Divider />
      <Card title="在线测试">
        <Form
          name="invoke"
          layout="vertical"
          onFinish={onFinish}
        >
          <Form.Item name="userRequestParams" label="请求参数：" >

            <Input.TextArea />
          </Form.Item>
            <Button type="primary" htmlType="submit">
              调用
            </Button>
        </Form>
      </Card>

      <Card title="返回结果" loading={invokeLoading}>
        {setInvokeRes}
      </Card>

    </PageContainer>
  );
};

export default Index;
