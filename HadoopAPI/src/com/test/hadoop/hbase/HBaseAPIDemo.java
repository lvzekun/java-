package com.test.hadoop.hbase;



import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.hbase.Cell;
import org.apache.hadoop.hbase.CellUtil;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.hadoop.hbase.TableName;
import org.apache.hadoop.hbase.client.Connection;
import org.apache.hadoop.hbase.client.ConnectionFactory;
import org.apache.hadoop.hbase.client.Delete;
import org.apache.hadoop.hbase.client.Get;
import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.hbase.client.Result;
import org.apache.hadoop.hbase.client.ResultScanner;
import org.apache.hadoop.hbase.client.Row;
import org.apache.hadoop.hbase.client.Scan;
import org.apache.hadoop.hbase.client.Table;
import org.apache.hadoop.hbase.util.Bytes;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class HBaseAPIDemo {
	//Connection conn;
	public static void main(String[] args) {
		Configuration conf = HBaseConfiguration.create();
		//zookeeper的主机地址
		conf.set("hbase.zookeeper.quorum", "lvzekun");
		//hbase存储数据的路径
		conf.set("hbase.rootdir", "hdfs://lvzekun:9000/hbase");

		try {
			Connection conn = ConnectionFactory.createConnection(conf);
			//获取hbase表对象
			Table table = conn.getTable(TableName.valueOf(Bytes.toBytes("user")));
			
			
				Put put = new Put(Bytes.toBytes("b"));
				//设置了一列
				put.addColumn(Bytes.toBytes("info"), Bytes.toBytes("age"), Bytes.toBytes("tieda"));
				
				table.put(put);
			
			table.close();
			conn.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
}
