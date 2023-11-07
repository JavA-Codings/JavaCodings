<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/modal.min.js"></script>
<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/button.min.js"></script>
<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/layer.min.js"></script>
<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/text-input.min.js"></script>
<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/form.min.js"></script>
<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/number-input.min.js"></script>
<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/stack.rtl.min.js"></script>
<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/select.min.js"></script>
<script type="module" src="https://1.www.s81c.com/common/carbon/web-components/tag/v2/latest/multi-select.min.js"></script>
<script type="module" src="/resources/scripts/manage_products.js"></script>


<cds-layer>
<cds-modal id="item-modal" >
	<cds-modal-header>
		<cds-modal-close-button></cds-modal-close-button>
		<cds-modal-label value="item_id">Item ID</cds-modal-label>
		<cds-modal-heading>상품 정보 수정</cds-modal-heading>
	</cds-modal-header>

	<cds-modal-body class="cds--layout">
		<cds-stack gap="32px" orientation="horizontal" use-custom-gap-value>
			<img class="input">
			<cds-stack gap="16px" orientation="vertical" use-custom-gap-value>
				<cds-text-input label="상품 이름" invalid-text="Error message" name="label"
				                class="input" category="item"></cds-text-input>
				<cds-text-input label="상품 설명" invalid-text="Error message" name="desc"
				                class="input" category="item"></cds-text-input>
				<cds-stack gap="8px" orientation="horizontal" use-custom-gap-value>
					<cds-number-input value="0" step="1000" min="0"
					                  label="가격" name="price"
					                  class="input" category="item"></cds-number-input>
					<cds-number-input value="0" min="0"
					                  label="재고 수량" name="stock"
					                  class="input" category="item"></cds-number-input>
				</cds-stack>
				<cds-stack gap="8px" orientation="horizontal" use-custom-gap-value>
					<cds-select label-text="분류" placeholder="Optional placeholder text"
					            class="input" category="item">
					<c:forEach items="${categoryList}" var="category">
						<cds-select-item value="${category}">${category}</cds-select-item>
					</c:forEach>
					</cds-select>
				</cds-stack>
				<cds-multi-select title-text="태그" direction="top" label="태그 선택" filterable class="input" category="tags">
					<c:forEach items="${tagList}" var="tag">
						<cds-multi-select-item value="${tag}">${tag}</cds-multi-select-item>
					</c:forEach>
				</cds-multi-select>
			</cds-stack>
		</cds-stack>
	</cds-modal-body>

	<cds-modal-footer>
		<cds-modal-footer-button kind="secondary" data-modal-close>그만두기</cds-modal-footer-button>
		<cds-modal-footer-button kind="primary" id="update">수정하기</cds-modal-footer-button>
	</cds-modal-footer>
</cds-modal>
</cds-layer>