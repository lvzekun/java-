package com.test.hadoop.mr;

import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;

public class WCRunner {
  public static void main(String []args){
	  
	   try{
		     Job job =new Job();
		     job.setMapperClass(WCMapper.class);
		     job.setReducerClass(WCReducer.class);
		     
		    // FileInputFormat.setInputPaths(job, new Path(args[0]));
			 //FileOutputFormat.setOutputPath(job, new Path(args[1]));
			 
		     
		     FileInputFormat.setInputPaths(job, new Path("hdfs://lvzekun:9000/wc/input"));
			 FileOutputFormat.setOutputPath(job, new Path("hdfs://lvzekun:9000/wc/input6"));
		     
		     
			 job.setJarByClass(WCRunner.class);
			 //map输出数据类型
			 job.setMapOutputKeyClass(Text.class);
			 job.setMapOutputValueClass(LongWritable.class);
			 //reduce输出的数据类型
			 job.setOutputKeyClass(Text.class);
			 job.setOutputValueClass(LongWritable.class);
			 
			// 设置reduce的数量
			 job.setNumReduceTasks(2);
			 //进行job
			 job.waitForCompletion(true);
	   }
	   catch(Exception e)
	   {
		   e.printStackTrace();
	   }
  }
	
}
