package com.ecom.javacodings.customer.access;

import com.ecom.javacodings.common.transfer.TagDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TagDAO {
	TagDTO getTag(String tagId);
}
