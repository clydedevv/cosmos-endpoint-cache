# test post so we can ensure it gets cached once I add that feature

curl -d '{"jsonrpc":"2.0","id":521627379779,"method":"abci_query","params":{"path":"/cosmwasm.wasm.v1.Query/SmartContractState","data":"0a3f6a756e6f31753735613372357973666d7475636e676d7930733574336a3076646c306e307175357668746339736a3576636c66706639367173656370367364120b7b22696e666f223a7b7d7d","prove":false}}' -H "Content-Type: application/json" -X POST https://rpc.juno.strange.love/

curl -d '{"jsonrpc":"2.0","id":521627379779,"method":"abci_query","params":{"path":"/cosmwasm.wasm.v1.Query/SmartContractState","data":"0a3f6a756e6f31753735613372357973666d7475636e676d7930733574336a3076646c306e307175357668746339736a3576636c66706639367173656370367364120b7b22696e666f223a7b7d7d","prove":false}}' -H "Content-Type: application/json" -X POST http://localhost:5001/

curl -d '{"jsonrpc":"2.0","id":542337771993,"method":"status","params":{}}' -H "Content-Type: application/json" -X POST https://juno-rpc-cache.reece.sh:443/
curl -d '{"jsonrpc":"2.0","id":221666287143,"method":"abci_query","params":{"path":"/cosmos.bank.v1beta1.Query/AllBalances","data":"0a2b6a756e6f3176726a616c71736336766a6b366a6b763767783574686d7839336e7437787164766c30647a78","prove":false}}' -H "Content-Type: application/json" -X POST https://juno-rpc-cache.reece.sh:443/