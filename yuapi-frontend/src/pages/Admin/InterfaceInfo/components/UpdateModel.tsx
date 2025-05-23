import {
  ProColumns, ProFormInstance,
  ProTable,
} from '@ant-design/pro-components';
import '@umijs/max';
import { Modal } from 'antd';
import React, {useEffect, useRef} from 'react';
export type Props = {
  values: API.InterfaceInfo;
  columns: ProColumns<API.InterfaceInfo>[];
  onCancel: () => void;
  onSubmit: (values: API.InterfaceInfo) => Promise<void>;
  visible: boolean;
};
const UpdateModel: React.FC<Props> = (props) => {
  const { values, visible ,columns , onCancel , onSubmit} = props;

  const formRef = useRef<ProFormInstance>();

  useEffect(() => {
    if (formRef) {
      formRef.current?.setFieldsValue(values);
    }
  }, [values])

  return <Modal visible={visible} footer={null} onCancel={() => onCancel?.() }>
    <ProTable
      type="form"
      columns={columns}
      formRef={formRef}
      onSubmit={async (value) => {
        onSubmit?.(value);
    }}
    />
  </Modal>
};
export default UpdateModel;
