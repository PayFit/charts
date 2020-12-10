.PHONY: gen
gen: gen-chart-doc

.PHONY: gen-chart-doc
gen-chart-doc:
	@aws ecr get-login-password --region eu-west-3 | docker login --username AWS --password-stdin 258792831588.dkr.ecr.eu-west-3.amazonaws.com; \
	for DIR in `find charts -type d -mindepth 1 -maxdepth 1`; do \
	    echo "Generating $${DIR} documentation..."; \
	    docker run -it -v $$(pwd):/data 258792831588.dkr.ecr.eu-west-3.amazonaws.com/chart-doc-gen:master -t=/data/readme.tpl -d=/data/$${DIR}/doc.yaml -v=/data/$${DIR}/values.yaml > $${DIR}/README.md; \
	done
