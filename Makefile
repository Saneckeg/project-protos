PROTO_DIR := proto
OUT_DIR := .

USER_PROTO := $(PROTO_DIR)/user/user.proto
TASK_PROTO := $(PROTO_DIR)/task/task.proto

generate:
	protoc \
		--go_out=$(OUT_DIR) --go_opt=paths=source_relative \
		--go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative \
		$(USER_PROTO) $(TASK_PROTO)

clean:
	find $(PROTO_DIR) -name "*.pb.go" -delete
