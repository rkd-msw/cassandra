#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'cassandra_types'

    module CassandraThrift
      module Cassandra
        class Client
          include ::Thrift::Client

          def get_slice(keyspace, key, column_parent, predicate, consistency_level)          
            send_get_slice(keyspace, key, column_parent, predicate, consistency_level)
            return recv_get_slice()
          end

          def send_get_slice(keyspace, key, column_parent, predicate, consistency_level)
            send_message('get_slice', Get_slice_args, :keyspace => keyspace, :key => key, :column_parent => column_parent, :predicate => predicate, :consistency_level => consistency_level)
          end

          def recv_get_slice()
            result = receive_message(Get_slice_result)
            return result.success unless result.success.nil?
            raise result.ire unless result.ire.nil?
            raise result.nfe unless result.nfe.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_slice failed: unknown result')
          end

          def get(keyspace, key, column_path, consistency_level)
            send_get(keyspace, key, column_path, consistency_level)
            return recv_get()
          end

          def send_get(keyspace, key, column_path, consistency_level)
            send_message('get', Get_args, :keyspace => keyspace, :key => key, :column_path => column_path, :consistency_level => consistency_level)
          end

          def recv_get()
            result = receive_message(Get_result)
            return result.success unless result.success.nil?
            raise result.ire unless result.ire.nil?
            raise result.nfe unless result.nfe.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get failed: unknown result')
          end

          def get_count(keyspace, key, column_parent, consistency_level)
            send_get_count(keyspace, key, column_parent, consistency_level)
            return recv_get_count()
          end

          def send_get_count(keyspace, key, column_parent, consistency_level)
            send_message('get_count', Get_count_args, :keyspace => keyspace, :key => key, :column_parent => column_parent, :consistency_level => consistency_level)
          end

          def recv_get_count()
            result = receive_message(Get_count_result)
            return result.success unless result.success.nil?
            raise result.ire unless result.ire.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_count failed: unknown result')
          end

          def insert(keyspace, key, column_path, value, timestamp, consistency_level)
            send_insert(keyspace, key, column_path, value, timestamp, consistency_level)
            recv_insert()
          end

          def send_insert(keyspace, key, column_path, value, timestamp, consistency_level)
            send_message('insert', Insert_args, :keyspace => keyspace, :key => key, :column_path => column_path, :value => value, :timestamp => timestamp, :consistency_level => consistency_level)
          end

          def recv_insert()
            result = receive_message(Insert_result)
            raise result.ire unless result.ire.nil?
            raise result.ue unless result.ue.nil?
            return
          end

          def batch_insert(keyspace, batch_mutation, consistency_level)
            send_batch_insert(keyspace, batch_mutation, consistency_level)
            recv_batch_insert()
          end

          def send_batch_insert(keyspace, batch_mutation, consistency_level)
            send_message('batch_insert', Batch_insert_args, :keyspace => keyspace, :batch_mutation => batch_mutation, :consistency_level => consistency_level)
          end

          def recv_batch_insert()
            result = receive_message(Batch_insert_result)
            raise result.ire unless result.ire.nil?
            raise result.ue unless result.ue.nil?
            return
          end

          def remove(keyspace, key, column_path, timestamp, consistency_level)
            send_remove(keyspace, key, column_path, timestamp, consistency_level)
            recv_remove()
          end

          def send_remove(keyspace, key, column_path, timestamp, consistency_level)
            send_message('remove', Remove_args, :keyspace => keyspace, :key => key, :column_path => column_path, :timestamp => timestamp, :consistency_level => consistency_level)
          end

          def recv_remove()
            result = receive_message(Remove_result)
            raise result.ire unless result.ire.nil?
            raise result.ue unless result.ue.nil?
            return
          end

          def batch_insert_super_column(keyspace, batch_mutation_super, consistency_level)
            send_batch_insert_super_column(keyspace, batch_mutation_super, consistency_level)
            recv_batch_insert_super_column()
          end

          def send_batch_insert_super_column(keyspace, batch_mutation_super, consistency_level)
            send_message('batch_insert_super_column', Batch_insert_super_column_args, :keyspace => keyspace, :batch_mutation_super => batch_mutation_super, :consistency_level => consistency_level)
          end

          def recv_batch_insert_super_column()
            result = receive_message(Batch_insert_super_column_result)
            raise result.ire unless result.ire.nil?
            raise result.ue unless result.ue.nil?
            return
          end

          def get_key_range(keyspace, column_family, start, finish, count)
            send_get_key_range(keyspace, column_family, start, finish, count)
            return recv_get_key_range()
          end

          def send_get_key_range(keyspace, column_family, start, finish, count)
            send_message('get_key_range', Get_key_range_args, :keyspace => keyspace, :column_family => column_family, :start => start, :finish => finish, :count => count)
          end

          def recv_get_key_range()
            result = receive_message(Get_key_range_result)
            return result.success unless result.success.nil?
            raise result.ire unless result.ire.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_key_range failed: unknown result')
          end

          def get_string_property(property)
            send_get_string_property(property)
            return recv_get_string_property()
          end

          def send_get_string_property(property)
            send_message('get_string_property', Get_string_property_args, :property => property)
          end

          def recv_get_string_property()
            result = receive_message(Get_string_property_result)
            return result.success unless result.success.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_string_property failed: unknown result')
          end

          def get_string_list_property(property)
            send_get_string_list_property(property)
            return recv_get_string_list_property()
          end

          def send_get_string_list_property(property)
            send_message('get_string_list_property', Get_string_list_property_args, :property => property)
          end

          def recv_get_string_list_property()
            result = receive_message(Get_string_list_property_result)
            return result.success unless result.success.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_string_list_property failed: unknown result')
          end

          def describe_keyspace(keyspace)
            send_describe_keyspace(keyspace)
            return recv_describe_keyspace()
          end

          def send_describe_keyspace(keyspace)
            send_message('describe_keyspace', Describe_keyspace_args, :keyspace => keyspace)
          end

          def recv_describe_keyspace()
            result = receive_message(Describe_keyspace_result)
            return result.success unless result.success.nil?
            raise result.nfe unless result.nfe.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'describe_keyspace failed: unknown result')
          end

          def execute_query(query)
            send_execute_query(query)
            return recv_execute_query()
          end

          def send_execute_query(query)
            send_message('execute_query', Execute_query_args, :query => query)
          end

          def recv_execute_query()
            result = receive_message(Execute_query_result)
            return result.success unless result.success.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'execute_query failed: unknown result')
          end

        end

        class Processor
          include ::Thrift::Processor

          def process_get_slice(seqid, iprot, oprot)
            args = read_args(iprot, Get_slice_args)
            result = Get_slice_result.new()
            begin
              result.success = @handler.get_slice(args.keyspace, args.key, args.column_parent, args.predicate, args.consistency_level)
            rescue CassandraThrift::InvalidRequestException => ire
              result.ire = ire
            rescue CassandraThrift::NotFoundException => nfe
              result.nfe = nfe
            end
            write_result(result, oprot, 'get_slice', seqid)
          end

          def process_get(seqid, iprot, oprot)
            args = read_args(iprot, Get_args)
            result = Get_result.new()
            begin
              result.success = @handler.get(args.keyspace, args.key, args.column_path, args.consistency_level)
            rescue CassandraThrift::InvalidRequestException => ire
              result.ire = ire
            rescue CassandraThrift::NotFoundException => nfe
              result.nfe = nfe
            end
            write_result(result, oprot, 'get', seqid)
          end

          def process_get_count(seqid, iprot, oprot)
            args = read_args(iprot, Get_count_args)
            result = Get_count_result.new()
            begin
              result.success = @handler.get_count(args.keyspace, args.key, args.column_parent, args.consistency_level)
            rescue CassandraThrift::InvalidRequestException => ire
              result.ire = ire
            end
            write_result(result, oprot, 'get_count', seqid)
          end

          def process_insert(seqid, iprot, oprot)
            args = read_args(iprot, Insert_args)
            result = Insert_result.new()
            begin
              @handler.insert(args.keyspace, args.key, args.column_path, args.value, args.timestamp, args.consistency_level)
            rescue CassandraThrift::InvalidRequestException => ire
              result.ire = ire
            rescue CassandraThrift::UnavailableException => ue
              result.ue = ue
            end
            write_result(result, oprot, 'insert', seqid)
          end

          def process_batch_insert(seqid, iprot, oprot)
            args = read_args(iprot, Batch_insert_args)
            result = Batch_insert_result.new()
            begin
              @handler.batch_insert(args.keyspace, args.batch_mutation, args.consistency_level)
            rescue CassandraThrift::InvalidRequestException => ire
              result.ire = ire
            rescue CassandraThrift::UnavailableException => ue
              result.ue = ue
            end
            write_result(result, oprot, 'batch_insert', seqid)
          end

          def process_remove(seqid, iprot, oprot)
            args = read_args(iprot, Remove_args)
            result = Remove_result.new()
            begin
              @handler.remove(args.keyspace, args.key, args.column_path, args.timestamp, args.consistency_level)
            rescue CassandraThrift::InvalidRequestException => ire
              result.ire = ire
            rescue CassandraThrift::UnavailableException => ue
              result.ue = ue
            end
            write_result(result, oprot, 'remove', seqid)
          end

          def process_batch_insert_super_column(seqid, iprot, oprot)
            args = read_args(iprot, Batch_insert_super_column_args)
            result = Batch_insert_super_column_result.new()
            begin
              @handler.batch_insert_super_column(args.keyspace, args.batch_mutation_super, args.consistency_level)
            rescue CassandraThrift::InvalidRequestException => ire
              result.ire = ire
            rescue CassandraThrift::UnavailableException => ue
              result.ue = ue
            end
            write_result(result, oprot, 'batch_insert_super_column', seqid)
          end

          def process_get_key_range(seqid, iprot, oprot)
            args = read_args(iprot, Get_key_range_args)
            result = Get_key_range_result.new()
            begin
              result.success = @handler.get_key_range(args.keyspace, args.column_family, args.start, args.finish, args.count)
            rescue CassandraThrift::InvalidRequestException => ire
              result.ire = ire
            end
            write_result(result, oprot, 'get_key_range', seqid)
          end

          def process_get_string_property(seqid, iprot, oprot)
            args = read_args(iprot, Get_string_property_args)
            result = Get_string_property_result.new()
            result.success = @handler.get_string_property(args.property)
            write_result(result, oprot, 'get_string_property', seqid)
          end

          def process_get_string_list_property(seqid, iprot, oprot)
            args = read_args(iprot, Get_string_list_property_args)
            result = Get_string_list_property_result.new()
            result.success = @handler.get_string_list_property(args.property)
            write_result(result, oprot, 'get_string_list_property', seqid)
          end

          def process_describe_keyspace(seqid, iprot, oprot)
            args = read_args(iprot, Describe_keyspace_args)
            result = Describe_keyspace_result.new()
            begin
              result.success = @handler.describe_keyspace(args.keyspace)
            rescue CassandraThrift::NotFoundException => nfe
              result.nfe = nfe
            end
            write_result(result, oprot, 'describe_keyspace', seqid)
          end

          def process_execute_query(seqid, iprot, oprot)
            args = read_args(iprot, Execute_query_args)
            result = Execute_query_result.new()
            result.success = @handler.execute_query(args.query)
            write_result(result, oprot, 'execute_query', seqid)
          end

        end

        # HELPER FUNCTIONS AND STRUCTURES

        class Get_slice_args
          include ::Thrift::Struct
          KEYSPACE = 1
          KEY = 2
          COLUMN_PARENT = 3
          PREDICATE = 4
          CONSISTENCY_LEVEL = 5

          ::Thrift::Struct.field_accessor self, :keyspace, :key, :column_parent, :predicate, :consistency_level
          FIELDS = {
            KEYSPACE => {:type => ::Thrift::Types::STRING, :name => 'keyspace'},
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'},
            COLUMN_PARENT => {:type => ::Thrift::Types::STRUCT, :name => 'column_parent', :class => CassandraThrift::ColumnParent},
            PREDICATE => {:type => ::Thrift::Types::STRUCT, :name => 'predicate', :class => CassandraThrift::SlicePredicate},
            CONSISTENCY_LEVEL => {:type => ::Thrift::Types::I32, :name => 'consistency_level', :default =>             1, :enum_class => CassandraThrift::ConsistencyLevel}
          }

          def struct_fields; FIELDS; end

          def validate
            unless @consistency_level.nil? || CassandraThrift::ConsistencyLevel::VALID_VALUES.include?(@consistency_level)
              raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field consistency_level!')
            end
          end

        end

        class Get_slice_result
          include ::Thrift::Struct
          SUCCESS = 0
          IRE = 1
          NFE = 2

          ::Thrift::Struct.field_accessor self, :success, :ire, :nfe
          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => CassandraThrift::ColumnOrSuperColumn}},
            IRE => {:type => ::Thrift::Types::STRUCT, :name => 'ire', :class => CassandraThrift::InvalidRequestException},
            NFE => {:type => ::Thrift::Types::STRUCT, :name => 'nfe', :class => CassandraThrift::NotFoundException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Get_args
          include ::Thrift::Struct
          KEYSPACE = 1
          KEY = 2
          COLUMN_PATH = 3
          CONSISTENCY_LEVEL = 4

          ::Thrift::Struct.field_accessor self, :keyspace, :key, :column_path, :consistency_level
          FIELDS = {
            KEYSPACE => {:type => ::Thrift::Types::STRING, :name => 'keyspace'},
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'},
            COLUMN_PATH => {:type => ::Thrift::Types::STRUCT, :name => 'column_path', :class => CassandraThrift::ColumnPath},
            CONSISTENCY_LEVEL => {:type => ::Thrift::Types::I32, :name => 'consistency_level', :default =>             1, :enum_class => CassandraThrift::ConsistencyLevel}
          }

          def struct_fields; FIELDS; end

          def validate
            unless @consistency_level.nil? || CassandraThrift::ConsistencyLevel::VALID_VALUES.include?(@consistency_level)
              raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field consistency_level!')
            end
          end

        end

        class Get_result
          include ::Thrift::Struct
          SUCCESS = 0
          IRE = 1
          NFE = 2

          ::Thrift::Struct.field_accessor self, :success, :ire, :nfe
          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => CassandraThrift::ColumnOrSuperColumn},
            IRE => {:type => ::Thrift::Types::STRUCT, :name => 'ire', :class => CassandraThrift::InvalidRequestException},
            NFE => {:type => ::Thrift::Types::STRUCT, :name => 'nfe', :class => CassandraThrift::NotFoundException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Get_count_args
          include ::Thrift::Struct
          KEYSPACE = 1
          KEY = 2
          COLUMN_PARENT = 3
          CONSISTENCY_LEVEL = 5

          ::Thrift::Struct.field_accessor self, :keyspace, :key, :column_parent, :consistency_level
          FIELDS = {
            KEYSPACE => {:type => ::Thrift::Types::STRING, :name => 'keyspace'},
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'},
            COLUMN_PARENT => {:type => ::Thrift::Types::STRUCT, :name => 'column_parent', :class => CassandraThrift::ColumnParent},
            CONSISTENCY_LEVEL => {:type => ::Thrift::Types::I32, :name => 'consistency_level', :default =>             1, :enum_class => CassandraThrift::ConsistencyLevel}
          }

          def struct_fields; FIELDS; end

          def validate
            unless @consistency_level.nil? || CassandraThrift::ConsistencyLevel::VALID_VALUES.include?(@consistency_level)
              raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field consistency_level!')
            end
          end

        end

        class Get_count_result
          include ::Thrift::Struct
          SUCCESS = 0
          IRE = 1

          ::Thrift::Struct.field_accessor self, :success, :ire
          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::I32, :name => 'success'},
            IRE => {:type => ::Thrift::Types::STRUCT, :name => 'ire', :class => CassandraThrift::InvalidRequestException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Insert_args
          include ::Thrift::Struct
          KEYSPACE = 1
          KEY = 2
          COLUMN_PATH = 3
          VALUE = 4
          TIMESTAMP = 5
          CONSISTENCY_LEVEL = 6

          ::Thrift::Struct.field_accessor self, :keyspace, :key, :column_path, :value, :timestamp, :consistency_level
          FIELDS = {
            KEYSPACE => {:type => ::Thrift::Types::STRING, :name => 'keyspace'},
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'},
            COLUMN_PATH => {:type => ::Thrift::Types::STRUCT, :name => 'column_path', :class => CassandraThrift::ColumnPath},
            VALUE => {:type => ::Thrift::Types::STRING, :name => 'value'},
            TIMESTAMP => {:type => ::Thrift::Types::I64, :name => 'timestamp'},
            CONSISTENCY_LEVEL => {:type => ::Thrift::Types::I32, :name => 'consistency_level', :default =>             0, :enum_class => CassandraThrift::ConsistencyLevel}
          }

          def struct_fields; FIELDS; end

          def validate
            unless @consistency_level.nil? || CassandraThrift::ConsistencyLevel::VALID_VALUES.include?(@consistency_level)
              raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field consistency_level!')
            end
          end

        end

        class Insert_result
          include ::Thrift::Struct
          IRE = 1
          UE = 2

          ::Thrift::Struct.field_accessor self, :ire, :ue
          FIELDS = {
            IRE => {:type => ::Thrift::Types::STRUCT, :name => 'ire', :class => CassandraThrift::InvalidRequestException},
            UE => {:type => ::Thrift::Types::STRUCT, :name => 'ue', :class => CassandraThrift::UnavailableException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Batch_insert_args
          include ::Thrift::Struct
          KEYSPACE = 1
          BATCH_MUTATION = 2
          CONSISTENCY_LEVEL = 3

          ::Thrift::Struct.field_accessor self, :keyspace, :batch_mutation, :consistency_level
          FIELDS = {
            KEYSPACE => {:type => ::Thrift::Types::STRING, :name => 'keyspace'},
            BATCH_MUTATION => {:type => ::Thrift::Types::STRUCT, :name => 'batch_mutation', :class => CassandraThrift::BatchMutation},
            CONSISTENCY_LEVEL => {:type => ::Thrift::Types::I32, :name => 'consistency_level', :default =>             0, :enum_class => CassandraThrift::ConsistencyLevel}
          }

          def struct_fields; FIELDS; end

          def validate
            unless @consistency_level.nil? || CassandraThrift::ConsistencyLevel::VALID_VALUES.include?(@consistency_level)
              raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field consistency_level!')
            end
          end

        end

        class Batch_insert_result
          include ::Thrift::Struct
          IRE = 1
          UE = 2

          ::Thrift::Struct.field_accessor self, :ire, :ue
          FIELDS = {
            IRE => {:type => ::Thrift::Types::STRUCT, :name => 'ire', :class => CassandraThrift::InvalidRequestException},
            UE => {:type => ::Thrift::Types::STRUCT, :name => 'ue', :class => CassandraThrift::UnavailableException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Remove_args
          include ::Thrift::Struct
          KEYSPACE = 1
          KEY = 2
          COLUMN_PATH = 3
          TIMESTAMP = 4
          CONSISTENCY_LEVEL = 5

          ::Thrift::Struct.field_accessor self, :keyspace, :key, :column_path, :timestamp, :consistency_level
          FIELDS = {
            KEYSPACE => {:type => ::Thrift::Types::STRING, :name => 'keyspace'},
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'},
            COLUMN_PATH => {:type => ::Thrift::Types::STRUCT, :name => 'column_path', :class => CassandraThrift::ColumnPath},
            TIMESTAMP => {:type => ::Thrift::Types::I64, :name => 'timestamp'},
            CONSISTENCY_LEVEL => {:type => ::Thrift::Types::I32, :name => 'consistency_level', :default =>             0, :enum_class => CassandraThrift::ConsistencyLevel}
          }

          def struct_fields; FIELDS; end

          def validate
            unless @consistency_level.nil? || CassandraThrift::ConsistencyLevel::VALID_VALUES.include?(@consistency_level)
              raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field consistency_level!')
            end
          end

        end

        class Remove_result
          include ::Thrift::Struct
          IRE = 1
          UE = 2

          ::Thrift::Struct.field_accessor self, :ire, :ue
          FIELDS = {
            IRE => {:type => ::Thrift::Types::STRUCT, :name => 'ire', :class => CassandraThrift::InvalidRequestException},
            UE => {:type => ::Thrift::Types::STRUCT, :name => 'ue', :class => CassandraThrift::UnavailableException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Batch_insert_super_column_args
          include ::Thrift::Struct
          KEYSPACE = 1
          BATCH_MUTATION_SUPER = 2
          CONSISTENCY_LEVEL = 3

          ::Thrift::Struct.field_accessor self, :keyspace, :batch_mutation_super, :consistency_level
          FIELDS = {
            KEYSPACE => {:type => ::Thrift::Types::STRING, :name => 'keyspace'},
            BATCH_MUTATION_SUPER => {:type => ::Thrift::Types::STRUCT, :name => 'batch_mutation_super', :class => CassandraThrift::BatchMutationSuper},
            CONSISTENCY_LEVEL => {:type => ::Thrift::Types::I32, :name => 'consistency_level', :default =>             0, :enum_class => CassandraThrift::ConsistencyLevel}
          }

          def struct_fields; FIELDS; end

          def validate
            unless @consistency_level.nil? || CassandraThrift::ConsistencyLevel::VALID_VALUES.include?(@consistency_level)
              raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field consistency_level!')
            end
          end

        end

        class Batch_insert_super_column_result
          include ::Thrift::Struct
          IRE = 1
          UE = 2

          ::Thrift::Struct.field_accessor self, :ire, :ue
          FIELDS = {
            IRE => {:type => ::Thrift::Types::STRUCT, :name => 'ire', :class => CassandraThrift::InvalidRequestException},
            UE => {:type => ::Thrift::Types::STRUCT, :name => 'ue', :class => CassandraThrift::UnavailableException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Get_key_range_args
          include ::Thrift::Struct
          KEYSPACE = 1
          COLUMN_FAMILY = 2
          START = 3
          FINISH = 4
          COUNT = 5

          ::Thrift::Struct.field_accessor self, :keyspace, :column_family, :start, :finish, :count
          FIELDS = {
            KEYSPACE => {:type => ::Thrift::Types::STRING, :name => 'keyspace'},
            COLUMN_FAMILY => {:type => ::Thrift::Types::STRING, :name => 'column_family'},
            START => {:type => ::Thrift::Types::STRING, :name => 'start', :default => %q""},
            FINISH => {:type => ::Thrift::Types::STRING, :name => 'finish', :default => %q""},
            COUNT => {:type => ::Thrift::Types::I32, :name => 'count', :default => 100}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Get_key_range_result
          include ::Thrift::Struct
          SUCCESS = 0
          IRE = 1

          ::Thrift::Struct.field_accessor self, :success, :ire
          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRING}},
            IRE => {:type => ::Thrift::Types::STRUCT, :name => 'ire', :class => CassandraThrift::InvalidRequestException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Get_string_property_args
          include ::Thrift::Struct
          PROPERTY = 1

          ::Thrift::Struct.field_accessor self, :property
          FIELDS = {
            PROPERTY => {:type => ::Thrift::Types::STRING, :name => 'property'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Get_string_property_result
          include ::Thrift::Struct
          SUCCESS = 0

          ::Thrift::Struct.field_accessor self, :success
          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Get_string_list_property_args
          include ::Thrift::Struct
          PROPERTY = 1

          ::Thrift::Struct.field_accessor self, :property
          FIELDS = {
            PROPERTY => {:type => ::Thrift::Types::STRING, :name => 'property'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Get_string_list_property_result
          include ::Thrift::Struct
          SUCCESS = 0

          ::Thrift::Struct.field_accessor self, :success
          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRING}}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Describe_keyspace_args
          include ::Thrift::Struct
          KEYSPACE = 1

          ::Thrift::Struct.field_accessor self, :keyspace
          FIELDS = {
            KEYSPACE => {:type => ::Thrift::Types::STRING, :name => 'keyspace'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Describe_keyspace_result
          include ::Thrift::Struct
          SUCCESS = 0
          NFE = 1

          ::Thrift::Struct.field_accessor self, :success, :nfe
          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::MAP, :name => 'success', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::STRING}}},
            NFE => {:type => ::Thrift::Types::STRUCT, :name => 'nfe', :class => CassandraThrift::NotFoundException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Execute_query_args
          include ::Thrift::Struct
          QUERY = 1

          ::Thrift::Struct.field_accessor self, :query
          FIELDS = {
            QUERY => {:type => ::Thrift::Types::STRING, :name => 'query'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

        class Execute_query_result
          include ::Thrift::Struct
          SUCCESS = 0

          ::Thrift::Struct.field_accessor self, :success
          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => CassandraThrift::CqlResult}
          }

          def struct_fields; FIELDS; end

          def validate
          end

        end

      end

    end
