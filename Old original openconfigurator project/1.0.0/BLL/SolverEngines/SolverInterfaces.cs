﻿// Developed by OpenConfigurator Core Team
// 
// Distributed under the MIT license
// ===========================================================
// Copyright (c) 2012 - Radu Mitache
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, 
// publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR 
// OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR 
// OTHER DEALINGS IN THE SOFTWARE.
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Z3;

namespace BLL.SolverEngines
{

    public interface ISolverContext
    {
        //General context methods
        bool IsValid(string variableID, string categoryName, VariableDataTypes dataType, object valueToTest);
        void CreateInitialRestorePoint();

        //Methods to manipulate elements inside the context
        void AddCustomFunction(string identifier, params ISolverStatement[] statements);
        void AddVariable(string identifier, VariableDataTypes dataType);
        void AddValueAssumption(string variableID, string categoryName, VariableDataTypes dataType, object value);
        void RemoveValueAssumption(string varID, string categoryName);
        void AddOrModifyValueAssumption(string variableID, string categoryName, VariableDataTypes dataType, object value);
        void AddImpliedValueAssumption(string featureVariableID, string featureCategoryName, string attributeVariableID, string attributeCategoryName, VariableDataTypes dataType, object value);
        
        //Methods to create solver statements
        ISolverStatement MakeEquals(ISolverStatement leftStatement, ISolverStatement rightStatement);
        ISolverStatement MakeAdd(ISolverStatement[] innerStatements);
        ISolverStatement MakeAnd(string categoryName, params string[] variableIDs);
        ISolverStatement MakeAnd(ISolverStatement leftStatement, ISolverStatement rightStatement);
        ISolverStatement MakeOr(string categoryName, params string[] variableIDs);
        ISolverStatement MakeOr(ISolverStatement leftStatement, ISolverStatement rightStatement);
        ISolverStatement MakeNot(ISolverStatement innerStatement);
        ISolverStatement MakeImplies(ISolverStatement leftStatement, ISolverStatement rightStatement);
        ISolverStatement MakeImplies(string categoryName, string leftVarID, string rightVarID);
        ISolverStatement MakeImplies(string categoryName, string leftVarID, ISolverStatement rightStatement);
        ISolverStatement MakeGreaterOrEqual(ISolverStatement leftStatement, ISolverStatement rightStatement);
        ISolverStatement MakeLowerOrEqual(ISolverStatement leftStatement, ISolverStatement rightStatement);
        ISolverStatement MakeNotAndCombinations(string categoryName, params string[] variableIDs);
        ISolverStatement MakeEquivalence(ISolverStatement leftStatement, ISolverStatement rightStatement);
        ISolverStatement MakeEquivalence(string categoryName, string leftVarID, string rightVarID);
        ISolverStatement MakeEquivalence(string categoryName, string leftVarID, ISolverStatement rightStatement);
        ISolverStatement MakeExcludes(ISolverStatement leftStatement, ISolverStatement rightStatement);
        ISolverStatement MakeExcludes(string categoryName, string leftVarID, string rightVarID);

        ISolverStatement MakeBoolToInt(string variableID, string categoryName);
        ISolverStatement MakeNumeral(int val);
        
    }
    public interface ISolverStatement
    {

    }
  
    //Enums
    public enum StatementTypes
    {
        And,
        Or,
        Not,
        NotAndCombinations,
        Implies,
        Excludes,
        Equivalence,
        FunctionCall,
        GreaterOrEqual,
        LesserOrEqual
    }
    public enum VariableDataTypes
    {
        Integer,
        Boolean
    }
}
