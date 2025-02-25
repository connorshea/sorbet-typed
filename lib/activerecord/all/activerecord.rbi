# typed: strong

VariadicUntypedFunction = T.type_alias { Proc }
AssociationCallback = T.type_alias do
  # docs in https://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html - jump to "Association callbacks"
  T.nilable(
    T.any(
      Symbol, # reference to a method
      String, # reference to a method? not clear: no string examples in docs
      T.proc.void, # a lambda that contains the callback
      Proc, # a proc that contains the callback
      T::Array[T.any(Symbol, Proc, T.proc.void)] # multiple callbacks
    )
  )
end

class ActiveRecord::ConnectionAdapters::AbstractAdapter; end
module ActiveRecord::QueryCache::ClassMethods; end
module ActiveRecord::Querying; end
module ActiveRecord::Translation; end
module ActiveRecord::DynamicMatchers; end
module ActiveRecord::Explain; end
module ActiveRecord::AttributeAssignment; end
module ActiveRecord::Integration; end
module ActiveRecord::CounterCache; end
module ActiveRecord::Attributes; end
module ActiveRecord::AttributeDecorators; end
module ActiveRecord::Locking::Optimistic; end
module ActiveRecord::Callbacks; end
module ActiveRecord::Timestamp; end
module ActiveRecord::Aggregations; end
module ActiveRecord::NoTouching; end
module ActiveRecord::Reflection; end
module ActiveRecord::Serialization; end
module ActiveRecord::Store; end

module ActiveRecord::Associations
  mixes_in_class_methods(::ActiveRecord::Associations::ClassMethods)
end

module ActiveRecord::Associations::ClassMethods
  sig do
    params(
      name: Symbol,
      scope: T.any(T.nilable(T.proc.void), T.nilable(T.proc.params(arg: T.untyped).void)),
      after_add: AssociationCallback,
      after_remove: AssociationCallback,
      anonymous_class: T.nilable(T.any(Symbol, String)),
      as: T.nilable(T.any(Symbol, String)),
      autosave: T.nilable(T::Boolean),
      before_add: AssociationCallback,
      before_remove: AssociationCallback,
      class_name: T.nilable(T.any(Symbol, String)),
      counter_cache: T.nilable(T.any(Symbol, String)),
      dependent: T.nilable(T.any(Symbol, String)),
      extend: T.nilable(T.any(Module, T::Array[Module])),
      foreign_key: T.nilable(T.any(Symbol, String)),
      foreign_type: T.nilable(T.any(Symbol, String)),
      index_errors: T.nilable(T::Boolean),
      inverse_of: T.nilable(T.any(Symbol, String, FalseClass)),
      join_table: T.nilable(T.any(Symbol, String)),
      primary_key: T.nilable(T.any(Symbol, String)),
      source: T.nilable(T.any(Symbol, String)),
      source_type: T.nilable(T.any(Symbol, String)),
      table_name: T.nilable(T.any(Symbol, String)),
      through: T.nilable(T.any(Symbol, String)),
      validate: T.nilable(T::Boolean),
      blk: T.nilable(T.proc.void)
    ).void
  end
  def has_many(
    name,
    scope = nil,
    after_add: nil,
    after_remove: nil,
    anonymous_class: nil,
    as: nil,
    autosave: nil,
    before_add: nil,
    before_remove: nil,
    class_name: nil,
    counter_cache: nil,
    dependent: nil,
    extend: nil,
    foreign_key: nil,
    foreign_type: nil,
    index_errors: nil,
    inverse_of: nil,
    join_table: nil,
    primary_key: nil,
    source: nil,
    source_type: nil,
    table_name: nil,
    through: nil,
    validate: nil,
    &blk
  ); end

  sig do
    params(
      name: Symbol,
      scope: T.nilable(T.proc.void),
      anonymous_class: T.nilable(T.any(Symbol, String)),
      as: T.nilable(T.any(Symbol, String)),
      autosave: T.nilable(T::Boolean),
      class_name: T.nilable(T.any(Symbol, String)),
      dependent: T.nilable(T.any(Symbol, String)),
      foreign_key: T.nilable(T.any(Symbol, String)),
      foreign_type: T.nilable(T.any(Symbol, String)),
      inverse_of: T.nilable(T.any(Symbol, String, FalseClass)),
      primary_key: T.nilable(T.any(Symbol, String)),
      required: T.nilable(T::Boolean),
      source: T.nilable(T.any(Symbol, String)),
      source_type: T.nilable(T.any(Symbol, String)),
      through: T.nilable(T.any(Symbol, String)),
      validate: T.nilable(T::Boolean),
      touch: T.nilable(T.any(T::Boolean, Symbol)),
      blk: T.nilable(T.proc.void)
    ).void
  end
  def has_one(
    name,
    scope = nil,
    anonymous_class: nil,
    as: nil,
    autosave: nil,
    class_name: nil,
    dependent: nil,
    foreign_key: nil,
    foreign_type: nil,
    inverse_of: nil,
    primary_key: nil,
    required: nil,
    source: nil,
    source_type: nil,
    through: nil,
    validate: nil,
    touch: nil,
    &blk
  ); end

  sig do
    params(
      name: T.nilable(T.any(Symbol, String)),
      scope: T.nilable(T.proc.void),
      autosave: T.nilable(T::Boolean),
      class_name: T.nilable(T.any(Symbol, String)),
      counter_cache: T.nilable(T.any(Symbol, String, T::Boolean)),
      dependent: T.nilable(T.any(Symbol, String)),
      foreign_key: T.nilable(T.any(Symbol, String)),
      foreign_type: T.nilable(T.any(Symbol, String)),
      inverse_of: T.nilable(T.any(Symbol, String, FalseClass)),
      optional: T.nilable(T::Boolean),
      polymorphic: T.nilable(T::Boolean),
      primary_key: T.nilable(T.any(Symbol, String)),
      required: T.nilable(T::Boolean),
      touch: T.nilable(T.any(T::Boolean, Symbol)),
      validate: T.nilable(T::Boolean),
      default: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def belongs_to(
    name,
    scope = nil,
    autosave: nil,
    class_name: nil,
    counter_cache: nil,
    dependent: nil,
    foreign_key: nil,
    foreign_type: nil,
    inverse_of: nil,
    optional: nil,
    polymorphic: nil,
    primary_key: nil,
    required: nil,
    touch: nil,
    validate: nil,
    default: nil
  ); end

  sig do
    params(
      name: T.nilable(T.any(Symbol, String)),
      scope: T.nilable(T.proc.void),
      after_add: AssociationCallback,
      after_remove: AssociationCallback,
      association_foreign_key: T.nilable(T.any(Symbol, String)),
      autosave: T.nilable(T::Boolean),
      before_add: AssociationCallback,
      before_remove: AssociationCallback,
      class_name: T.nilable(T.any(Symbol, String)),
      extend: T.nilable(T.any(Module, T::Array[Module])),
      foreign_key: T.nilable(T.any(Symbol, String)),
      inverse_of: T.nilable(T.any(Symbol, String, FalseClass)),
      join_table: T.nilable(T.any(Symbol, String)),
      validate: T.nilable(T::Boolean),
      blk: T.nilable(T.proc.void)
    ).void
  end
  def has_and_belongs_to_many(
    name,
    scope = nil,
    after_add: nil,
    after_remove: nil,
    association_foreign_key: nil,
    autosave: nil,
    before_add: nil,
    before_remove: nil,
    class_name: nil,
    extend: nil,
    foreign_key: nil,
    inverse_of: nil,
    join_table: nil,
    validate: nil,
    &blk
  ); end
end

module ActiveRecord::AttributeMethods
  include ActiveModel::AttributeMethods
end

module ActiveRecord::AttributeMethods::Serialization::ClassMethods
  sig { params(attr_name: Symbol, class_name_or_coder: T.untyped).void }
  def serialize(attr_name, class_name_or_coder = Object); end
end

module ActiveRecord::AttributeMethods
  mixes_in_class_methods(::ActiveRecord::AttributeMethods::ClassMethods)
end

module ActiveRecord::AttributeMethods::ClassMethods; end

module ActiveRecord::AttributeMethods::PrimaryKey
  mixes_in_class_methods(::ActiveRecord::AttributeMethods::PrimaryKey::ClassMethods)
end

module ActiveRecord::AttributeMethods::PrimaryKey::ClassMethods; end

ActiveRecord::AttributeMethods::PrimaryKey::ClassMethods::ID_ATTRIBUTE_METHODS = T.let(T.unsafe(nil), T::Set[T.untyped])

ActiveRecord::AttributeMethods::RESTRICTED_CLASS_METHODS = T.let(T.unsafe(nil), T::Array[T.untyped])

module ActiveRecord::AttributeMethods::Read
  mixes_in_class_methods(::ActiveRecord::AttributeMethods::Read::ClassMethods)
end

module ActiveRecord::AttributeMethods::Read::ClassMethods; end

module ActiveRecord::AttributeMethods::Serialization
  mixes_in_class_methods(::ActiveRecord::AttributeMethods::Serialization::ClassMethods)
end

module ActiveRecord::AttributeMethods::Serialization::ClassMethods; end

module ActiveRecord::AttributeMethods::TimeZoneConversion
  mixes_in_class_methods(::ActiveRecord::AttributeMethods::TimeZoneConversion::ClassMethods)
end

module ActiveRecord::AttributeMethods::TimeZoneConversion::ClassMethods; end

module ActiveRecord::AttributeMethods::Write
  mixes_in_class_methods(::ActiveRecord::AttributeMethods::Write::ClassMethods)
end

module ActiveRecord::AttributeMethods::Write::ClassMethods; end

module ActiveRecord::AutosaveAssociation
  mixes_in_class_methods(::ActiveRecord::AutosaveAssociation::ClassMethods)
end

module ActiveRecord::AutosaveAssociation::ClassMethods; end

module ActiveRecord::Core
  mixes_in_class_methods(::ActiveRecord::Core::ClassMethods)
end

module ActiveRecord::Core::ClassMethods; end

module ActiveRecord::Tasks::DatabaseTasks
  extend(::ActiveRecord::Tasks::DatabaseTasks)
end

ActiveRecord::Tasks::DatabaseTasks::LOCAL_HOSTS = T.let(T.unsafe(nil), T::Array[T.untyped])

module ActiveRecord::Delegation
  mixes_in_class_methods(::ActiveRecord::Delegation::ClassMethods)
end

module ActiveRecord::Delegation::ClassMethods; end

module ActiveRecord::Delegation::ClassSpecificRelation
  mixes_in_class_methods(::ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods)
end

module ActiveRecord::Delegation::ClassSpecificRelation::ClassMethods; end

ActiveRecord::Migrator::MIGRATOR_SALT = T.let(T.unsafe(nil), Integer)

module ActiveRecord::NestedAttributes::ClassMethods
  sig do
    params(
      attr_names: T.any(Symbol, String),
      allow_destroy: T.nilable(T::Boolean),
      reject_if: T.any(Symbol, Proc, T.proc.params(
        attributes: T.any(
          T::Hash[T.any(Symbol, String), T.untyped],
          ActionController::Parameters
        )
      ).returns(T::Boolean)),
      limit: T.any(Integer, Symbol, Proc, T.proc.returns(Integer)),
      update_only: T.nilable(T::Boolean),
    ).void
  end
  def accepts_nested_attributes_for(
    *attr_names,
    allow_destroy: nil,
    reject_if: nil,
    limit: nil,
    update_only: nil
  ); end
end

module ActiveRecord::ReadonlyAttributes
  mixes_in_class_methods(::ActiveRecord::ReadonlyAttributes::ClassMethods)
end

module ActiveRecord::ReadonlyAttributes::ClassMethods; end
module ActiveRecord::Scoping::Named
  mixes_in_class_methods(::ActiveRecord::Scoping::Named::ClassMethods)
end

module ActiveRecord::Scoping::Named::ClassMethods
  sig do
    params(
      name: T.nilable(T.any(Symbol, String)),
      body: VariadicUntypedFunction,
      block: T.nilable(VariadicUntypedFunction)
    ).void
  end
  def scope(name, body, &block); end
end

module ActiveRecord::Inheritance
  mixes_in_class_methods(ActiveRecord::Inheritance::ClassMethods)
end

module ActiveRecord::Transactions
  mixes_in_class_methods(ActiveRecord::Transactions::ClassMethods)
end

class ActiveRecord::Base
  extend ActiveModel::Naming

  extend ActiveSupport::Benchmarkable
  extend ActiveSupport::DescendantsTracker

  extend ActiveRecord::ConnectionHandling
  extend ActiveRecord::QueryCache::ClassMethods
  extend ActiveRecord::Querying
  extend ActiveRecord::Translation
  extend ActiveRecord::DynamicMatchers
  extend ActiveRecord::Explain
  extend ActiveRecord::Enum

  include ActiveRecord::Core
  include ActiveRecord::Persistence
  include ActiveRecord::ReadonlyAttributes
  include ActiveRecord::ModelSchema
  extend ActiveRecord::ModelSchema::ClassMethods # via ActiveRecord::ModelSchema concern inclusion
  include ActiveRecord::Sanitization
  extend ActiveRecord::Sanitization::ClassMethods # via ActiveRecord::Sanitization concern inclusion
  include ActiveRecord::Inheritance
  include ActiveRecord::Scoping
  include ActiveRecord::Scoping::Default # via ActiveRecord::Scoping#included hook
  include ActiveRecord::Scoping::Named # via ActiveRecord::Scoping#included hook
  extend ActiveRecord::Scoping::Named::ClassMethods # via ActiveRecord::Scoping::Named Concern inclusion
  include ActiveRecord::AttributeAssignment
  include ActiveModel::Conversion
  include ActiveRecord::Integration
  include ActiveModel::Validations
  include ActiveModel::Validations::HelperMethods
  include ActiveRecord::CounterCache
  include ActiveRecord::Attributes
  include ActiveRecord::AttributeDecorators
  include ActiveRecord::Locking::Optimistic
  include ActiveRecord::Locking::Pessimistic
  include ActiveRecord::AttributeMethods
  include ActiveRecord::AttributeMethods::Read # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::Write # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::BeforeTypeCast # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::Query # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::PrimaryKey # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::TimeZoneConversion # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::Dirty # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::Serialization # via ActiveRecord::AttributeMethods#included hook
  extend ActiveRecord::AttributeMethods::Serialization::ClassMethods # via ActiveRecord::AttributeMethods::Serialization Concern inclusion
  include ActiveRecord::Callbacks
  include ActiveRecord::Timestamp
  include ActiveRecord::Associations
  include ActiveModel::SecurePassword
  include ActiveRecord::AutosaveAssociation
  include ActiveRecord::NestedAttributes
  extend ActiveRecord::NestedAttributes::ClassMethods # via ActiveRecord::NestedAttributes Concern inclusion
  include ActiveRecord::Aggregations
  include ActiveRecord::Transactions
  include ActiveRecord::NoTouching
  include ActiveRecord::Reflection
  include ActiveRecord::Serialization
  include ActiveRecord::Store

  sig do
    params(
      args: T.any(Symbol, T.proc.returns(T.untyped)),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      on: T.nilable(T.any(Symbol, T::Array[Symbol])),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.after_commit(
    *args,
    if: nil,
    on: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.after_create(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.after_destroy(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.after_rollback(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.after_save(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.after_update(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      on: T.nilable(T.any(Symbol, T::Array[Symbol])),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.after_validation(
    *args,
    if: nil,
    unless: nil,
    on: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.around_create(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.around_destroy(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.around_save(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.around_update(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.before_create(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      prepend: T::Boolean,
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.before_destroy(
    *args,
    if: nil,
    unless: nil,
    prepend: false,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.before_save(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.before_update(
    *args,
    if: nil,
    unless: nil,
    &block
  ); end

  sig do
    params(
      args: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      on: T.nilable(T.any(Symbol, T::Array[Symbol])),
      block: T.nilable(T.proc.bind(T.untyped).void)
    ).void
  end
  def self.before_validation(
    *args,
    if: nil,
    unless: nil,
    on: nil,
    &block
  ); end

  sig { params(comparison_object: T.untyped).returns(T::Boolean) }
  def ==(comparison_object); end
end

module ActiveRecord::Inheritance::ClassMethods
  sig { params(value: T::Boolean).void }
  def abstract_class=(value); end

  sig { returns(T::Boolean) }
  def abstract_class; end
end

module ActiveRecord::Transactions::ClassMethods
  sig do
    type_parameters(:T)
    .params(
      options: T.nilable(T::Hash[T.any(Symbol, String), T.untyped]),
      block: T.proc.returns(T.type_parameter(:T))
    ).returns(T.type_parameter(:T))
  end
  def transaction(options = {}, &block); end
end

module ActiveRecord::Persistence
  mixes_in_class_methods(ActiveRecord::Persistence::ClassMethods)

  sig { params(klass: Class).returns(T.untyped) }
  def becomes!(klass); end

  sig { params(klass: Class).returns(T.untyped) }
  def becomes(klass); end

  sig do
    params(
      attribute: T.any(Symbol, String),
      by: T.nilable(Integer),
      touch: T.nilable(T::Boolean)
    ).returns(T.self_type)
  end
  def decrement!(attribute, by = 1, touch: nil); end

  sig do
    params(
      attribute: T.any(Symbol, String),
      by: T.nilable(Integer)
    ).returns(T.self_type)
  end
  def decrement(attribute, by = 1); end

  sig { returns(T.self_type) }
  def delete; end

  sig { returns(T.any(T.self_type, FalseClass)) }
  def destroy; end

  sig { returns(T.self_type) }
  def destroy!; end

  sig { returns(T::Boolean) }
  def destroyed?(); end

  sig do
    params(
      attribute: T.any(Symbol, String),
      by: T.nilable(Integer),
      touch: T.nilable(T::Boolean)
    ).returns(T.self_type)
  end
  def increment!(attribute, by = 1, touch: nil); end

  sig do
    params(
      attribute: T.any(Symbol, String),
      by: T.nilable(Integer)
    ).returns(T.self_type)
  end
  def increment(attribute, by = 1); end

  sig { returns(T::Boolean) }
  def new_record?(); end

  sig { returns(T::Boolean) }
  def persisted?(); end

  sig do
    params(
      options: T.nilable({ lock: T.nilable(T::Boolean) })
    ).returns(T.self_type)
  end
  def reload(options = nil); end

  sig do
    params(
      args: T.untyped,
      blk: T.nilable(T.proc.void),
    ).returns(TrueClass)
  end
  def save!(*args, &blk); end

  sig do
    params(
      args: T.untyped,
      blk: T.nilable(T.proc.void),
    ).returns(T::Boolean)
  end
  def save(*args, &blk); end

  sig { params(attribute: T.any(Symbol, String)).returns(TrueClass) }
  def toggle!(attribute); end

  sig { params(attribute: T.any(Symbol, String)).returns(T.self_type) }
  def toggle(attribute); end

  sig do
    params(
      names: T.any(
        Symbol,
        String,
        T::Array[T.any(Symbol, String)]
      ),
      time: T.nilable(Time)
    ).returns(T::Boolean)
  end
  def touch(*names, time: nil); end

  sig do
    params(
      name: T.any(Symbol, String),
      value: T.untyped,
    ).returns(T::Boolean)
  end
  def update_attribute(name, value); end

  sig do
    params(
      name: T.any(Symbol, String),
      value: T.untyped,
    ).returns(T::Boolean)
  end
  def update_column(name, value); end

  sig do
    params(
      attributes: T::Hash[T.any(Symbol, String), T.untyped]
    ).returns(T::Boolean)
  end
  def update_columns(attributes); end

  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(TrueClass)
  end
  def update!(attributes); end

  # update_attributes! is an alias of update!
  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(TrueClass)
  end
  def update_attributes!(attributes); end

  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(T::Boolean)
  end
  def update(attributes); end

  # update_attributes is an alias of update
  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(T::Boolean)
  end
  def update_attributes(attributes); end

  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).void
  end
  def assign_attributes(attributes); end
end

module ActiveRecord::Persistence::ClassMethods
  sig do
    params(
      attributes: T.nilable(T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        T::Array[T::Hash[T.any(Symbol, String), T.untyped]]
      )),
      blk: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(T.untyped)
  end
  def create!(attributes = nil, &blk); end

  sig do
    params(
      attributes: T.nilable(T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        T::Array[T::Hash[T.any(Symbol, String), T.untyped]]
      )),
      blk: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(T.untyped)
  end
  def create(attributes = nil, &blk); end

  sig do
    params(
      id_or_array: T.any(T.untyped, T::Array[T.untyped])
    ).returns(T.untyped)
  end
  def delete(id_or_array); end

  sig do
    params(
      id_or_array: T.any(T.untyped, T::Array[T.untyped])
    ).returns(T.untyped)
  end
  def destroy!(id_or_array); end

  sig do
    params(
      id_or_array: T.any(T.untyped, T::Array[T.untyped])
    ).returns(T.untyped)
  end
  def destroy(id_or_array); end

  sig do
    params(
      attributes: T::Array[T::Hash[T.any(Symbol, String), T.untyped]],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)]))
    ).returns(ActiveRecord::Result)
  end
  def insert_all!(attributes, returning: nil); end

  sig do
    params(
      attributes: T::Array[T::Hash[T.any(Symbol, String), T.untyped]],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def insert_all(attributes, returning: nil, unique_by: nil); end

  sig do
    params(
      attributes: T::Hash[T.any(Symbol, String), T.untyped],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def insert!(attributes, returning: nil, unique_by: nil); end

  sig do
    params(
      attributes: T::Hash[T.any(Symbol, String), T.untyped],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def insert(attributes, returning: nil, unique_by: nil); end

  sig { params(attributes: T.untyped, column_types: T::Hash[T.untyped, T.untyped], blk: T.proc.void).returns(T.untyped) }
  def instantiate(attributes, column_types = {}, &blk); end

  # The 'attributes' parameter can take either a hash or an array of hashes.
  sig do
    params(
      id: T.any(T.untyped, T::Array[T.untyped], Symbol),
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        T::Array[T::Hash[T.any(Symbol, String), T.untyped]]
      )
    ).returns(T.any(T::Array[T.untyped], T.untyped))
  end
  def update(id = :all, attributes); end

  sig do
    params(
      attributes: T::Array[T::Hash[T.any(Symbol, String), T.untyped]],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def upsert_all(attributes, returning: nil, unique_by: nil); end

  sig do
    params(
      attributes: T::Hash[T.any(Symbol, String), T.untyped],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def upsert(attributes, returning: nil, unique_by: nil); end
end

class ActiveRecord::Result
  include(::Enumerable)
  Elem = type_member(fixed: T.untyped)
end

ActiveRecord::Type::BigInteger = ActiveModel::Type::BigInteger
ActiveRecord::Type::Binary = ActiveModel::Type::Binary
ActiveRecord::Type::Boolean = ActiveModel::Type::Boolean
ActiveRecord::Type::Boolean = ActiveModel::Type::Boolean
ActiveRecord::Type::Decimal = ActiveModel::Type::Decimal
ActiveRecord::Type::Float = ActiveModel::Type::Float
ActiveRecord::Type::Integer = ActiveModel::Type::Integer
ActiveRecord::Type::String = ActiveModel::Type::String
ActiveRecord::Type::String = ActiveModel::Type::String
ActiveRecord::Type::Value = ActiveModel::Type::Value
ActiveRecord::Type::Value = ActiveModel::Type::Value

module ActiveRecord
  class ActiveRecordError < StandardError; end
  class AdapterNotFound < ActiveRecordError; end
  class AdapterNotSpecified < ActiveRecordError; end
  class AmbiguousSourceReflectionForThroughAssociation < ActiveRecordError; end
  class AssociationNotFoundError < ConfigurationError; end
  class AssociationTypeMismatch < ActiveRecordError; end
  class AttributeAssignmentError < ActiveRecordError; end
  class ConcurrentMigrationError < MigrationError; end
  class ConfigurationError < ActiveRecordError; end
  class ConnectionNotEstablished < ActiveRecordError; end
  class ConnectionTimeoutError < ConnectionNotEstablished; end
  class DangerousAttributeError < ActiveRecordError; end
  class Deadlocked < TransactionRollbackError; end
  class DeleteRestrictionError < ActiveRecordError; end
  class DuplicateMigrationNameError < MigrationError; end
  class DuplicateMigrationVersionError < MigrationError; end
  class EagerLoadPolymorphicError < ActiveRecordError; end
  class EnvironmentMismatchError < ActiveRecordError; end
  class ExclusiveConnectionTimeoutError < ConnectionTimeoutError; end
  class FixtureClassNotFound < ActiveRecordError; end
  class HasManyThroughAssociationNotFoundError < ActiveRecordError; end
  class HasManyThroughAssociationPointlessSourceTypeError < ActiveRecordError; end
  class HasManyThroughAssociationPolymorphicSourceError < ActiveRecordError; end
  class HasManyThroughAssociationPolymorphicThroughError < ActiveRecordError; end
  class HasManyThroughCantAssociateThroughHasOneOrManyReflection < ThroughCantAssociateThroughHasOneOrManyReflection; end
  class HasManyThroughNestedAssociationsAreReadonly < ThroughNestedAssociationsAreReadonly; end
  class HasManyThroughOrderError < ActiveRecordError; end
  class HasManyThroughSourceAssociationNotFoundError < ActiveRecordError; end
  class HasOneAssociationPolymorphicThroughError < ActiveRecordError; end
  class HasOneThroughCantAssociateThroughCollection < ActiveRecordError; end
  class HasOneThroughCantAssociateThroughHasOneOrManyReflection < ThroughCantAssociateThroughHasOneOrManyReflection; end
  class HasOneThroughNestedAssociationsAreReadonly < ThroughNestedAssociationsAreReadonly; end
  class IllegalMigrationNameError < MigrationError; end
  class ImmutableRelation < ActiveRecordError; end
  class InvalidForeignKey < WrappedDatabaseException; end
  class InverseOfAssociationNotFoundError < ActiveRecordError; end
  class IrreversibleMigration < MigrationError; end
  class IrreversibleOrderError < ActiveRecordError; end
  class LockWaitTimeout < StatementInvalid; end
  class MigrationError < ActiveRecordError; end
  class MismatchedForeignKey < StatementInvalid; end
  class MultiparameterAssignmentErrors < ActiveRecordError; end
  class NoDatabaseError < StatementInvalid; end
  class NoEnvironmentInSchemaError < MigrationError; end
  class NotNullViolation < StatementInvalid; end
  class PendingMigrationError < MigrationError; end
  class PreparedStatementCacheExpired < StatementInvalid; end
  class PreparedStatementInvalid < ActiveRecordError; end
  class ProtectedEnvironmentError < ActiveRecordError; end
  class RangeError < StatementInvalid; end
  class ReadOnlyRecord < ActiveRecordError; end

  class RecordInvalid < ActiveRecordError
    def record; end
  end

  class RecordNotDestroyed < ActiveRecordError; end
  class RecordNotFound < ActiveRecordError; end
  class RecordNotSaved < ActiveRecordError; end
  class RecordNotUnique < WrappedDatabaseException; end
  class Rollback < ActiveRecordError; end
  class SerializationFailure < TransactionRollbackError; end
  class SerializationTypeMismatch < ActiveRecordError; end
  class StaleObjectError < ActiveRecordError; end
  class StatementInvalid < ActiveRecordError; end
  class SubclassNotFound < ActiveRecordError; end
  class ThroughCantAssociateThroughHasOneOrManyReflection < ActiveRecordError; end
  class ThroughNestedAssociationsAreReadonly < ActiveRecordError; end
  class TransactionIsolationError < ActiveRecordError; end
  class TransactionRollbackError < StatementInvalid; end
  class TypeConflictError < StandardError; end
  UnknownAttributeError = ActiveModel::UnknownAttributeError
  class UnknownAttributeReference < ActiveRecordError; end
  class UnknownMigrationVersionError < MigrationError; end
  class UnknownPrimaryKey < ActiveRecordError; end
  class ValueTooLong < StatementInvalid; end
  class WrappedDatabaseException < StatementInvalid; end
end

class ActiveRecord::Migration
  MigrationFilenameRegexp = T.let(T.unsafe(nil), Regexp)
end

class ActiveRecord::Schema < ActiveRecord::Migration::Current
  sig {params(info: T::Hash[T.untyped, T.untyped], blk: T.proc.bind(ActiveRecord::Schema).void).void}
  def self.define(info = nil, &blk); end
end

module ActiveRecord::AttributeMethods::Dirty
  extend T::Sig
  sig { params(attr_name: T.any(String, Symbol), options: T.untyped).returns(T::Boolean) }
  def saved_change_to_attribute?(attr_name, **options); end
end

module ActiveRecord::Associations
  mixes_in_class_methods(ActiveRecord::Associations::ClassMethods)
end

# Represents the schema of an SQL table in an abstract way. This class
# provides methods for manipulating the schema representation.
#
# Inside migration files, the `t` object in `create_table`
# is actually of this type:
#
# ```ruby
# class SomeMigration < ActiveRecord::Migration[5.0]
#   def up
#     create_table :foo do |t|
#       puts t.class  # => "ActiveRecord::ConnectionAdapters::TableDefinition"
#     end
#   end
#
#   def down
#     # ...
#   end
# end
# ```
class ActiveRecord::ConnectionAdapters::TableDefinition
  include ActiveRecord::ConnectionAdapters::ColumnMethods

  # Returns an array of ColumnDefinition objects for the columns of the table.
  sig { returns(T::Array[ActiveRecord::ConnectionAdapters::ColumnDefinition]) }
  def columns; end

  # Returns a ColumnDefinition for the column with name `name`.
  sig { params(name: T.any(String, Symbol)).returns(ActiveRecord::ConnectionAdapters::ColumnDefinition) }
  def [](name); end

  sig do
    params(
      name: T.any(String, Symbol),
      type: T.untyped,
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).returns(T.self_type)
  end
  def column(
    name,
    type,
    index: nil,
    default: nil,
    **options
  ); end

  # Remove the column `name` from the table.
  #
  # ```ruby
  # remove_column(:account_id)
  # ```
  sig { params(name: T.any(String, Symbol)).void }
  def remove_column(name); end

  # Adds index options to the indexes hash, keyed by column name
  # This is primarily used to track indexes that need to be created after the table
  #
  # ```ruby
  # index(:account_id, name: 'index_projects_on_account_id')
  # ```
  sig do
    params(
      column_name: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      options: T.untyped
    ).void
  end
  def index(column_name, options = {}); end

  # Appends `:datetime` columns `:created_at` and
  # `:updated_at` to the table.
  #
  # ```ruby
  # t.timestamps null: false
  # ```
  sig { params(options: T.untyped).void }
  def timestamps(**options); end

  # Adds a reference.
  #
  # ```ruby
  # t.references(:user)
  # t.belongs_to(:supplier, foreign_key: true)
  # t.belongs_to(:supplier, foreign_key: true, type: :integer)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def references(*args, **options); end

  # Adds a reference.
  #
  # ```ruby
  # t.references(:user)
  # t.belongs_to(:supplier, foreign_key: true)
  # t.belongs_to(:supplier, foreign_key: true, type: :integer)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def belongs_to(*args, **options); end
end

module ActiveRecord::ConnectionAdapters::ColumnMethods
  # Appends a primary key definition to the table definition.
  # Can be called multiple times, but this is probably not a good idea.
  sig do
    params(
      name: T.any(String, Symbol),
      type: T.any(String, Symbol),
      options: T.untyped
    ).void
  end
  def primary_key(name, type = :primary_key, **options); end

  ########
  # NOTE: The following methods are all generated dynamically and have the same parameters.
  # See https://github.com/rails/rails/blob/v6.0.0/activerecord/lib/active_record/connection_adapters/abstract/schema_definitions.rb#L217
  ########

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def bigint(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def binary(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def boolean(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def date(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def datetime(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def decimal(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def numeric(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def float(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def integer(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def json(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def string(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def text(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def time(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def timestamp(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def virtual(*names, index: nil, default: nil, **options); end
end

# Represents an SQL table in an abstract way for updating a table.
#
# Available transformations are:
#
# ```ruby
# change_table :table do |t|
#   t.primary_key
#   t.column
#   t.index
#   t.rename_index
#   t.timestamps
#   t.change
#   t.change_default
#   t.rename
#   t.references
#   t.belongs_to
#   t.string
#   t.text
#   t.integer
#   t.bigint
#   t.float
#   t.decimal
#   t.numeric
#   t.datetime
#   t.timestamp
#   t.time
#   t.date
#   t.binary
#   t.boolean
#   t.foreign_key
#   t.json
#   t.virtual
#   t.remove
#   t.remove_foreign_key
#   t.remove_references
#   t.remove_belongs_to
#   t.remove_index
#   t.remove_timestamps
# end
# ```
class ActiveRecord::ConnectionAdapters::Table
  include ActiveRecord::ConnectionAdapters::ColumnMethods

  # Adds a new column to the named table.
  #
  # ```ruby
  # t.column(:name, :string)
  # ```
  sig { params(column_name: T.any(String, Symbol), type: Symbol, options: T.untyped).void }
  def column(column_name, type, **options); end

  # Checks to see if a column exists.
  #
  # ```ruby
  # t.string(:name) unless t.column_exists?(:name, :string)
  # ```
  sig { params(column_name: T.any(String, Symbol), type: Symbol, options: T.untyped).returns(T::Boolean) }
  def column_exists?(column_name, type = nil, options = {}); end

  # Adds a new index to the table. `column_name` can be a single Symbol, or
  # an Array of Symbols.
  #
  # ```ruby
  # t.index(:name)
  # t.index([:branch_id, :party_id], unique: true)
  # t.index([:branch_id, :party_id], unique: true, name: 'by_branch_party')
  # ```
  sig do
    params(
      column_name: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      options: T.untyped
    ).void
  end
  def index(column_name, options = {}); end

  # Checks to see if an index exists.
  #
  # ```ruby
  # unless t.index_exists?(:branch_id)
  #   t.index(:branch_id)
  # end
  # ```
  sig { params(column_name: T.any(String, Symbol), options: T.untyped).returns(T::Boolean) }
  def index_exists?(column_name, options = {}); end

  # Renames the given index on the table.
  #
  # ```ruby
  # t.rename_index(:user_id, :account_id)
  # ```
  sig { params(index_name: T.any(String, Symbol), new_index_name: T.any(String, Symbol)).void }
  def rename_index(index_name, new_index_name); end

  # Adds timestamps (`created_at` and `updated_at`) columns to the table.
  #
  # ```ruby
  # t.timestamps(null: false)
  # ```
  def timestamps(options = {}); end

  # Changes the column's definition according to the new options.
  #
  # ```ruby
  # t.change(:name, :string, limit: 80)
  # t.change(:description, :text)
  # ```
  sig { params(column_name: T.any(String, Symbol), type: Symbol, options: T.untyped).void }
  def change(column_name, type, options = {}); end

  # Sets a new default value for a column.
  #
  # ```ruby
  # t.change_default(:qualification, 'new')
  # t.change_default(:authorized, 1)
  # t.change_default(:status, from: nil, to: "draft")
  # ```
  sig { params(column_name: T.any(String, Symbol), default_or_changes: T.untyped).void }
  def change_default(column_name, default_or_changes); end

  # Removes the column(s) from the table definition.
  #
  # ```ruby
  # t.remove(:qualification)
  # t.remove(:qualification, :experience)
  # ```
  sig { params(column_names: T.any(String, Symbol)).void }
  def remove(*column_names); end

  # Removes the given index from the table.
  #
  # ```ruby
  # t.remove_index(:branch_id)
  # t.remove_index(column: [:branch_id, :party_id])
  # t.remove_index(name: :by_branch_party)
  # ```
  sig { params(options: T.untyped).void }
  def remove_index(options = {}); end

  # Removes the timestamp columns (`created_at` and `updated_at`) from the table.
  #
  # ```ruby
  # t.remove_timestamps
  # ```
  sig { params(options: T.untyped).void }
  def remove_timestamps(options = {}); end

  # Renames a column.
  #
  # ```ruby
  # t.rename(:description, :name)
  # ```
  sig { params(column_name: T.any(String, Symbol), new_column_name: T.any(String, Symbol)).void }
  def rename(column_name, new_column_name); end

  # Adds a reference.
  #
  # ```ruby
  # t.references(:user)
  # t.belongs_to(:supplier, foreign_key: true)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def references(*args, **options); end

  # Adds a reference.
  #
  # ```ruby
  # t.references(:user)
  # t.belongs_to(:supplier, foreign_key: true)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def belongs_to(*args, **options); end

  # Removes a reference. Optionally removes a `type` column.
  #
  # ```ruby
  # t.remove_references(:user)
  # t.remove_belongs_to(:supplier, polymorphic: true)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def remove_references(*args, **options); end

  # Removes a reference. Optionally removes a `type` column.
  #
  # ```ruby
  # t.remove_references(:user)
  # t.remove_belongs_to(:supplier, polymorphic: true)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def remove_belongs_to(*args, **options); end

  # Adds a foreign key to the table using a supplied table name.
  #
  # ```ruby
  # t.foreign_key(:authors)
  # t.foreign_key(:authors, column: :author_id, primary_key: "id")
  # ```
  sig { params(args: T.untyped).void }
  def foreign_key(*args); end

  # Removes the given foreign key from the table.
  #
  # ```ruby
  # t.remove_foreign_key(:authors)
  # t.remove_foreign_key(column: :author_id)
  # ```
  sig { params(args: T.untyped).void }
  def remove_foreign_key(*args); end

  # Checks to see if a foreign key exists.
  #
  # ```ruby
  # t.foreign_key(:authors) unless t.foreign_key_exists?(:authors)
  # ```
  sig { params(args: T.untyped).returns(T::Boolean) }
  def foreign_key_exists?(*args); end
end

class ActiveRecord::InternalMetadata < ::ActiveRecord::Base
  class << self
    def [](key); end
    def []=(key, value); end
    def _internal?; end
    def _validators; end
    def attribute_type_decorations; end
    def create_table; end
    def defined_enums; end
    def drop_table; end
    def page(num = T.unsafe(nil)); end
    def primary_key; end
    def table_exists?; end
    def table_name; end
  end
end

module ActiveRecord::Locking::Pessimistic
  # Returns `nil` if `ActiveRecord::Rollback` is raised.
  sig do
    type_parameters(:U)
      .params(
        lock: T.any(String, TrueClass),
        blk: T.proc.returns(T.type_parameter(:U)),
      )
      .returns(T.nilable(T.type_parameter(:U)))
  end
  def with_lock(lock = nil, &blk); end
end

ActiveRecord::LogSubscriber::IGNORE_PAYLOAD_NAMES = T.let(T.unsafe(nil), T::Array[T.untyped])

class ActiveRecord::Relation
  Elem = type_member(fixed: T.untyped)

  sig { returns(Integer) }
  def delete_all; end

  # Returns size of the records.
  sig { returns(Integer) }
  def size; end

  # Returns true if relation is blank.
  sig { returns(T::Boolean) }
  def blank?; end

  # Returns true if there are no records.
  sig { returns(T::Boolean) }
  def empty?; end

  # Returns true if there are no records.
  sig { params(block: T.nilable(T.proc.params(arg0: Elem).returns(T::Boolean))).returns(T::Boolean) }
  def none?(&block); end

  # Returns true if there are any records.
  sig { params(block: T.nilable(T.proc.params(arg0: Elem).returns(T::Boolean))).returns(T::Boolean) }
  def any?(&block); end

  # Returns true if there is exactly one record.
  sig { params(block: T.nilable(T.proc.params(arg0: Elem).returns(T::Boolean))).returns(T::Boolean) }
  def one?(&block); end

  # Returns true if there is more than one record.
  sig { params(block: T.nilable(T.proc.params(arg0: Elem).returns(T::Boolean))).returns(T::Boolean) }
  def many?(&block); end
end

module ActiveRecord::Store
  mixes_in_class_methods(::ActiveRecord::Store::ClassMethods)
end

module ActiveRecord::Store::ClassMethods
  sig do
    params(
      store_attribute: T.any(Symbol, String),
      options: T::Hash[Symbol, T.untyped]
    ).void
  end
  def store(store_attribute, options = {}); end

  sig do
    params(
      store_attribute: T.any(Symbol, String),
      keys: T.any(T::Array[T.any(Symbol, String)], Symbol, String),
      prefix: T.nilable(T.any(T::Boolean, Symbol, String)),
      suffix: T.nilable(T.any(T::Boolean, Symbol, String))
    ).void
  end
  def store_accessor(store_attribute, *keys, prefix: nil, suffix: nil); end

  sig do
    returns(T::Hash[Symbol, T::Array[Symbol]])
  end
  def stored_attributes; end
end
