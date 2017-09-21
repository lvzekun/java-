package com.test.hadoop;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

import org.apache.commons.compress.utils.IOUtils;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FSDataInputStream;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.Path;
import org.junit.Before;
import org.junit.Test;


public class HadoopAPIDemo {
	
	FileSystem fileSystem;
	
	@Before
	public void init() throws IOException, URISyntaxException{
		//����
		Configuration conf = new Configuration();
		fileSystem = FileSystem.newInstance(new URI("hdfs://lvzekun:9000"), conf);
		System.out.println(":"+fileSystem);
	}
	
	@Test
	public void testMkdir() throws Exception{
		/**
		 * �����HDFSд���ݣ���Ҫ��Ӧ��Ȩ��
		 * 1��
		 * 2��
		 * 3��
		 * 
		 */
		boolean result = fileSystem.mkdirs(new Path("/aa/bb"));
		System.out.println(result);
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		//����Hadoop�����ļ�
		Configuration conf = new Configuration();
		
		try {
			/**
			 * Ĭ�϶�ȡ�����ļ������ȡHDFS������Э��
			 * FileSystem֧�ֺܶ��ļ�ϵͳ�Ķ�ȡ��
			 */
			FileSystem fileSystem = FileSystem.newInstance(new URI("hdfs://lvzekun:9000"), conf);
			System.out.println(":"+fileSystem);
			/**
			 * 
			 * 
			 */
			Path path = new Path("/NOTICE.txt");
			FSDataInputStream inputStream = fileSystem.open(path);
//			int c;
//			while ((c=inputStream.read())!=-1) {
//				System.out.println((char)c);
//				
//			}
			IOUtils.copy(inputStream, System.out);
			inputStream.close();
		} catch (Exception e) {
		}
		

	}

}
