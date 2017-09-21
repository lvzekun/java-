package com.test.hadoop.mr;

import java.io.IOException;

import org.apache.hadoop.io.LongWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;



public class WCReducer extends Reducer <Text,LongWritable,Text,LongWritable> {
	protected void reduce(Text key, Iterable<LongWritable> values, Context context
            ) throws IOException, InterruptedException {
	
		      long count = 0l;
		      for(LongWritable value:values)
		      {
		    	  count+=value.get();
		    	  
		      }
		      context.write(key, new LongWritable(count));
	}
	

}
