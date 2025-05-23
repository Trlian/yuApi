import { PageContainer } from '@ant-design/pro-components';
import {message , List} from 'antd';
import React, {useEffect ,useState} from 'react';
import {listInterfaceInfoByPageUsingGet} from "@/services/yuapi-backend/interfaceInfoController";

/**
 * 主页
 * @constructor
 */
const Index: React.FC = () => {

  const [loading, setLoading] = useState(false);
  const [list, setList] = useState<API.InterfaceInfo[]>([]);
  const [total, setTotal]  = useState<number>(0);

  const loadData = async (current = 1, pageSize = 5) => {
    setLoading(true);         //正在加载
    try {
      const res = await listInterfaceInfoByPageUsingGet({
        current, pageSize
      });
      setList(res?.data?.records ?? []);
      setTotal(res?.data?.total ?? 0);
    } catch (error: any) {
      message.error('请求失败，', + error.message)
    }
    const res = await listInterfaceInfoByPageUsingGet({

    });
    setLoading(false);         //加载完毕
  }

  useEffect(() => {
    loadData();
  }, [])

  return (
    <PageContainer title="在线接口开放平台">
      <List
        className="my-list"
        loading={loading}
        itemLayout="horizontal"
        dataSource={list}
        renderItem={(item) => {
          const apiLink = `/interface_info/${item.id}`;
          return (
            <List.Item
              actions={[<a key={item.id} href={apiLink}>查看</a>]}
            >
              <List.Item.Meta
                title={<a href={apiLink}>{item.name}</a>}
                description={item.description}
              />
            </List.Item>
          );
        }}
        pagination = {{

          showTotal(total: number) {
            return '总数' + total;
          },
          pageSize: 5,
          total,
          onChange(page, pageSize) {
          loadData(page, pageSize);
          },

        }}
      />
    </PageContainer>
  );
};

export default Index;
