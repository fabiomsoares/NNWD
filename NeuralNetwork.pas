unit NeuralNetwork;

interface

type
  TMatrix = array of array of Real;
  TActFunc = function(X:Real):Real;

  TNeuralLayer = Class(TObject)
    private
      Weights:TMatrix;
      NumberOfInputs, NumberOfNodes:Integer;
    public
      constructor Create(NumberOfNodes:Integer,ActFunc:TActFunc);
      procedure Initialize;
      function Calculate(Input:TMatrix):TMatrix;
      function GetWeights():TMatrix;
  End;

  TNeuralNetwork = Class(TObject)
    private
      NeuralLayers:array of TNeuralLayer;
      NumberOfInputs,NumberOfOutputs:Integer;
    public
      function ForwardPropagation(Input:TMatrix):TMatrix;
      procedure Train(Input,Target:TMatrix);
  End;

implementation

end.
