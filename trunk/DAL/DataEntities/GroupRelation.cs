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
    public partial class GroupRelation : IDataEntity
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
    
        public virtual int GroupRelationTypeID
        {
            get { return _groupRelationTypeID; }
            set
            {
                if (_groupRelationTypeID != value)
                {
                    if (GroupRelation_Type != null && GroupRelation_Type.ID != value)
                    {
                        GroupRelation_Type = null;
                    }
                    _groupRelationTypeID = value;
                }
            }
        }
        private int _groupRelationTypeID;
    
        public virtual Nullable<int> LowerBound
        {
            get;
            set;
        }
    
        public virtual Nullable<int> UpperBound
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
        public virtual GroupRelation_Types GroupRelation_Type
        {
            get { return _groupRelation_Type; }
            set
            {
                if (!ReferenceEquals(_groupRelation_Type, value))
                {
                    var previousValue = _groupRelation_Type;
                    _groupRelation_Type = value;
                    FixupGroupRelation_Type(previousValue);
                }
            }
        }
        private GroupRelation_Types _groupRelation_Type;
    
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
    
        private void FixupGroupRelation_Type(GroupRelation_Types previousValue)
        {
            if (previousValue != null && previousValue.GroupRelations.Contains(this))
            {
                previousValue.GroupRelations.Remove(this);
            }
    
            if (GroupRelation_Type != null)
            {
                if (!GroupRelation_Type.GroupRelations.Contains(this))
                {
                    GroupRelation_Type.GroupRelations.Add(this);
                }
                if (GroupRelationTypeID != GroupRelation_Type.ID)
                {
                    GroupRelationTypeID = GroupRelation_Type.ID;
                }
            }
        }
    
        private void FixupModel(Model previousValue)
        {
            if (previousValue != null && previousValue.GroupRelations.Contains(this))
            {
                previousValue.GroupRelations.Remove(this);
            }
    
            if (Model != null)
            {
                if (!Model.GroupRelations.Contains(this))
                {
                    Model.GroupRelations.Add(this);
                }
                if (ModelID != Model.ID)
                {
                    ModelID = Model.ID;
                }
            }
        }
    
        private void FixupGroupRelations_To_Features(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (GroupRelations_To_Features item in e.NewItems)
                {
                    item.GroupRelation = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (GroupRelations_To_Features item in e.OldItems)
                {
                    if (ReferenceEquals(item.GroupRelation, this))
                    {
                        item.GroupRelation = null;
                    }
                }
            }
        }

        #endregion
    }
}
