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
    public partial class Model : IDataEntity
    {
        #region Primitive Properties
    
        public virtual int ID
        {
            get;
            set;
        }
    
        public virtual int UserID
        {
            get { return _userID; }
            set
            {
                if (_userID != value)
                {
                    if (User != null && User.ID != value)
                    {
                        User = null;
                    }
                    _userID = value;
                }
            }
        }
        private int _userID;
    
        public virtual string Name
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> CreatedDate
        {
            get;
            set;
        }
    
        public virtual Nullable<System.DateTime> LastModifiedDate
        {
            get;
            set;
        }

        #endregion
        #region Navigation Properties
    
        public virtual ICollection<Feature> Features
        {
            get
            {
                if (_features == null)
                {
                    var newCollection = new FixupCollection<Feature>();
                    newCollection.CollectionChanged += FixupFeatures;
                    _features = newCollection;
                }
                return _features;
            }
            set
            {
                if (!ReferenceEquals(_features, value))
                {
                    var previousValue = _features as FixupCollection<Feature>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupFeatures;
                    }
                    _features = value;
                    var newValue = value as FixupCollection<Feature>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupFeatures;
                    }
                }
            }
        }
        private ICollection<Feature> _features;
    
        public virtual User User
        {
            get { return _user; }
            set
            {
                if (!ReferenceEquals(_user, value))
                {
                    var previousValue = _user;
                    _user = value;
                    FixupUser(previousValue);
                }
            }
        }
        private User _user;
    
        public virtual ICollection<Relation> Relations
        {
            get
            {
                if (_relations == null)
                {
                    var newCollection = new FixupCollection<Relation>();
                    newCollection.CollectionChanged += FixupRelations;
                    _relations = newCollection;
                }
                return _relations;
            }
            set
            {
                if (!ReferenceEquals(_relations, value))
                {
                    var previousValue = _relations as FixupCollection<Relation>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupRelations;
                    }
                    _relations = value;
                    var newValue = value as FixupCollection<Relation>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupRelations;
                    }
                }
            }
        }
        private ICollection<Relation> _relations;
    
        public virtual ICollection<GroupRelation> GroupRelations
        {
            get
            {
                if (_groupRelations == null)
                {
                    var newCollection = new FixupCollection<GroupRelation>();
                    newCollection.CollectionChanged += FixupGroupRelations;
                    _groupRelations = newCollection;
                }
                return _groupRelations;
            }
            set
            {
                if (!ReferenceEquals(_groupRelations, value))
                {
                    var previousValue = _groupRelations as FixupCollection<GroupRelation>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupGroupRelations;
                    }
                    _groupRelations = value;
                    var newValue = value as FixupCollection<GroupRelation>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupGroupRelations;
                    }
                }
            }
        }
        private ICollection<GroupRelation> _groupRelations;
    
        public virtual ICollection<CompositionRule> CompositionRules
        {
            get
            {
                if (_compositionRules == null)
                {
                    var newCollection = new FixupCollection<CompositionRule>();
                    newCollection.CollectionChanged += FixupCompositionRules;
                    _compositionRules = newCollection;
                }
                return _compositionRules;
            }
            set
            {
                if (!ReferenceEquals(_compositionRules, value))
                {
                    var previousValue = _compositionRules as FixupCollection<CompositionRule>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupCompositionRules;
                    }
                    _compositionRules = value;
                    var newValue = value as FixupCollection<CompositionRule>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupCompositionRules;
                    }
                }
            }
        }
        private ICollection<CompositionRule> _compositionRules;
    
        public virtual ICollection<CustomRule> CustomRules
        {
            get
            {
                if (_customRules == null)
                {
                    var newCollection = new FixupCollection<CustomRule>();
                    newCollection.CollectionChanged += FixupCustomRules;
                    _customRules = newCollection;
                }
                return _customRules;
            }
            set
            {
                if (!ReferenceEquals(_customRules, value))
                {
                    var previousValue = _customRules as FixupCollection<CustomRule>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupCustomRules;
                    }
                    _customRules = value;
                    var newValue = value as FixupCollection<CustomRule>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupCustomRules;
                    }
                }
            }
        }
        private ICollection<CustomRule> _customRules;
    
        public virtual ICollection<Configuration> Configurations
        {
            get
            {
                if (_configurations == null)
                {
                    var newCollection = new FixupCollection<Configuration>();
                    newCollection.CollectionChanged += FixupConfigurations;
                    _configurations = newCollection;
                }
                return _configurations;
            }
            set
            {
                if (!ReferenceEquals(_configurations, value))
                {
                    var previousValue = _configurations as FixupCollection<Configuration>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupConfigurations;
                    }
                    _configurations = value;
                    var newValue = value as FixupCollection<Configuration>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupConfigurations;
                    }
                }
            }
        }
        private ICollection<Configuration> _configurations;
    
        public virtual ICollection<CustomFunction> CustomFunctions
        {
            get
            {
                if (_customFunctions == null)
                {
                    var newCollection = new FixupCollection<CustomFunction>();
                    newCollection.CollectionChanged += FixupCustomFunctions;
                    _customFunctions = newCollection;
                }
                return _customFunctions;
            }
            set
            {
                if (!ReferenceEquals(_customFunctions, value))
                {
                    var previousValue = _customFunctions as FixupCollection<CustomFunction>;
                    if (previousValue != null)
                    {
                        previousValue.CollectionChanged -= FixupCustomFunctions;
                    }
                    _customFunctions = value;
                    var newValue = value as FixupCollection<CustomFunction>;
                    if (newValue != null)
                    {
                        newValue.CollectionChanged += FixupCustomFunctions;
                    }
                }
            }
        }
        private ICollection<CustomFunction> _customFunctions;

        #endregion
        #region Association Fixup
    
        private void FixupUser(User previousValue)
        {
            if (previousValue != null && previousValue.Models.Contains(this))
            {
                previousValue.Models.Remove(this);
            }
    
            if (User != null)
            {
                if (!User.Models.Contains(this))
                {
                    User.Models.Add(this);
                }
                if (UserID != User.ID)
                {
                    UserID = User.ID;
                }
            }
        }
    
        private void FixupFeatures(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Feature item in e.NewItems)
                {
                    item.Model = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Feature item in e.OldItems)
                {
                    if (ReferenceEquals(item.Model, this))
                    {
                        item.Model = null;
                    }
                }
            }
        }
    
        private void FixupRelations(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Relation item in e.NewItems)
                {
                    item.Model = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Relation item in e.OldItems)
                {
                    if (ReferenceEquals(item.Model, this))
                    {
                        item.Model = null;
                    }
                }
            }
        }
    
        private void FixupGroupRelations(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (GroupRelation item in e.NewItems)
                {
                    item.Model = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (GroupRelation item in e.OldItems)
                {
                    if (ReferenceEquals(item.Model, this))
                    {
                        item.Model = null;
                    }
                }
            }
        }
    
        private void FixupCompositionRules(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (CompositionRule item in e.NewItems)
                {
                    item.Model = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (CompositionRule item in e.OldItems)
                {
                    if (ReferenceEquals(item.Model, this))
                    {
                        item.Model = null;
                    }
                }
            }
        }
    
        private void FixupCustomRules(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (CustomRule item in e.NewItems)
                {
                    item.Model = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (CustomRule item in e.OldItems)
                {
                    if (ReferenceEquals(item.Model, this))
                    {
                        item.Model = null;
                    }
                }
            }
        }
    
        private void FixupConfigurations(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (Configuration item in e.NewItems)
                {
                    item.Model = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (Configuration item in e.OldItems)
                {
                    if (ReferenceEquals(item.Model, this))
                    {
                        item.Model = null;
                    }
                }
            }
        }
    
        private void FixupCustomFunctions(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.NewItems != null)
            {
                foreach (CustomFunction item in e.NewItems)
                {
                    item.Model = this;
                }
            }
    
            if (e.OldItems != null)
            {
                foreach (CustomFunction item in e.OldItems)
                {
                    if (ReferenceEquals(item.Model, this))
                    {
                        item.Model = null;
                    }
                }
            }
        }

        #endregion
    }
}
