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
		//解析
		Configuration conf = new Configuration();
		fileSystem = FileSystem.newInstance(new URI("hdfs://lvzekun:9000"), conf);
		System.out.println(":"+fileSystem);
	}
	
	@Test
	public void testMkdir() throws Exception{
		/**
		 * 如果想HDFS写数据，需要相应的权限
		 * 1、
		 * 2、
		 * 3、
		 * 
		 */
		boolean result = fileSystem.mkdirs(new Path("/aa/bb"));
		System.out.println(result);
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		//解析Hadoop配置文件
		Configuration conf = new Configuration();
		
		try {
			/**
			 * 默认读取本机文件，想读取HDFS，配置协议
			 * FileSystem支持很多文件系统的读取，
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
