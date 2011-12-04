//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;

namespace DAL.DataEntities
{
    public partial class Feature : IDataEntity
    {
        #region Primitive Properties
    
        public virtual int ID
        {
            get;
            set;
        }
    
        public virtual int ModelID
        {
            get { return _modelID; }
            set
            {
                if (_modelID != value)
                {
                    if (Model != null && Model.ID != value)
                    {
                        Model = null;
                    }
                    _modelID = value;
                }
            }
        }
        private int _modelID;
    
        public virtual Nullable<int> FeatureGroupID
        {
            get;
            set;
        }
    
        public virtual string Name
        {
            get;
            set;
        }
    
        public virtual string Description
        {
            get;
            set;
        }
    
        public virtual Nullable<bool> IsRoot
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
        public virtual ICollection<Attribute> Attributes
        {
            get
            {
                if (_attributes == null)
                {
                    var newCollection = new FixupCollection<Attribute>();
                    newCollection.CollectionChanged += FixupAttributes;
                    _attributes = newCollection;
                }
                return _attributes;
            }
            set
            {
                if (!ReferenceEquals(_attributes, value))
                {
                    var previousValue = _attributes as FixupCollection<Attribute>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupAttributes;
                    }
                    _attributes = value;
                    var newValue = value as FixupCollection<Attribute>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupAttributes;
                    }
                }
            }
        }
        private ICollection<Attribute> _attributes;
    
        public virtual Model Model
        {
            get { return _model; }
            set
            {
                if (!ReferenceEquals(_model, value))
                {
                    var previousValue = _model;
                    _model = value;
                    FixupModel(previousValue);
                }
            }
        }
        private Model _model;
    
        public virtual ICollection<Relation> ChildRelations
        {
            get
            {
                if (_childRelations == null)
                {
                    var newCollection = new FixupCollection<Relation>();
                    newCollection.CollectionChanged += FixupChildRelations;
                    _childRelations = newCollection;
                }
                return _childRelations;
            }
            set
            {
                if (!ReferenceEquals(_childRelations, value))
                {
                    var previousValue = _childRelations as FixupCollection<Relation>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupChildRelations;
                    }
                    _childRelations = value;
                    var newValue = value as FixupCollection<Relation>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupChildRelations;
                    }
                }
            }
        }
        private ICollection<Relation> _childRelations;
    
        public virtual ICollection<Relation> ParentRelations
        {
            get
            {
                if (_parentRelations == null)
                {
                    var newCollection = new FixupCollection<Relation>();
                    newCollection.CollectionChanged += FixupParentRelations;
                    _parentRelations = newCollection;
                }
                return _parentRelations;
            }
            set
            {
                if (!ReferenceEquals(_parentRelations, value))
                {
                    var previousValue = _parentRelations as FixupCollection<Relation>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupParentRelations;
                    }
                    _parentRelations = value;
                    var newValue = value as FixupCollection<Relation>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupParentRelations;
                    }
                }
            }
        }
        private ICollection<Relation> _parentRelations;
    
        public virtual ICollection<GroupRelations_To_Features> GroupRelations_To_Features
        {
            get
            {
                if (_groupRelations_To_Features == null)
                {
                    var newCollection = new FixupCollection<GroupRelations_To_Features>();
                    newCollection.CollectionChanged += FixupGroupRelations_To_Features;
                    _groupRelations_To_Features = newCollection;
                }
                return _groupRelations_To_Features;
            }
            set
            {
                if (!ReferenceEquals(_groupRelations_To_Features, value))
                {
                    var previousValue = _groupRelations_To_Features as FixupCollection<GroupRelations_To_Features>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupGroupRelations_To_Features;
                    }
                    _groupRelations_To_Features = value;
                    var newValue = value as FixupCollection<GroupRelations_To_Features>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupGroupRelations_To_Features;
                    }
                }
            }
        }
        private ICollection<GroupRelations_To_Features> _groupRelations_To_Features;

        #endregion
        #region Association Fixup
    
        private void FixupModel(Model previousValue)
        {
            if (previousValue != null && previousValue.Features.Contains(this))
            {
                previousValue.Features.Remove(this);
            }
    
            if (Model != null)
            {
                if (!Model.Features.Contains(this))
                {
                    Model.Features.Add(this);
                }
                if (ModelID != Model.ID)
                {
                    ModelID = Model.ID;
                }
            }
        }
    
        private void FixupAttributes(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Attribute item in e.NewItems)
                {
                    item.Feature = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Attribute item in e.OldItems)
                {
                    if (ReferenceEquals(item.Feature, this))
                    {
                        item.Feature = null;
                    }
                }
            }
        }
    
        private void FixupChildRelations(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Relation item in e.NewItems)
                {
                    item.ParentFeature = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Relation item in e.OldItems)
                {
                    if (ReferenceEquals(item.ParentFeature, this))
                    {
                        item.ParentFeature = null;
                    }
                }
            }
        }
    
        private void FixupParentRelations(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Relation item in e.NewItems)
                {
                    item.ChildFeature = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Relation item in e.OldItems)
                {
                    if (ReferenceEquals(item.ChildFeature, this))
                    {
                        item.ChildFeature = null;
                    }
                }
            }
        }
    
        private void FixupGroupRelations_To_Features(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (GroupRelations_To_Features item in e.NewItems)
                {
                    item.ParentFeature = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (GroupRelations_To_Features item in e.OldItems)
                {
                    if (ReferenceEquals(item.ParentFeature, this))
                    {
                        item.ParentFeature = null;
                    }
                }
            }
        }

        #endregion
    }
}
