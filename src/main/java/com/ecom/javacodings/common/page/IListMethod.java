package com.ecom.javacodings.common.page;

import java.util.List;
import java.util.Map;

@FunctionalInterface
public interface IListMethod {
    List<Object> getList(String criteria, PageDTO page);
}
