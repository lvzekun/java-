package com.test.hadoop.mr;
import java.io.IOException;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
public class WCMapper extends Mapper<LongWritable,Text,Text,LongWritable> {
	protected void map(LongWritable key,Text value,
			Context context) throws  IOException, InterruptedException {
		     //��value�з�Ϊ���ʣ�д��ȥ��
		      String line =value.toString();
		      String[] words =line.split("");
		      for(String word:words)
		    	  //��key��valueд��
		    	  context.write(new Text(word),new LongWritable(1));
			}
}
