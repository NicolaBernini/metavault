# yAxis MetaVault Contracts

The MetaVault will allow users to take advantage of the best yield farming strategies while minimizing gas fees and transferring difficult management decisions to an incentivized community governance. Multiple strategies are utilized by each vault, allowing for per-strategy deposit caps to be placed in order to limit risk.

## Responsible Disclosure

We have an active [security bug bounty on Immunefi](https://immunefi.com/bounty/yaxis/). Please follow our [Security Policy](https://github.com/yaxis-project/metavault/security/policy) for reporting security issues to the team.

## Writing Strategies

In order to write a strategy for the MetaVault, you must inherit the BaseStrategy contract. The BaseStrategy contract is an abstract contract that gives specific security properties which make it hard to write an insecure strategy.

All state-changing functions implemented in the strategy should be internal, since any public or externally-facing functions are already handled in the BaseStrategy.

 The following functions must be implemented by a strategy:
 - `function _deposit() internal virtual;`
 - `function _harvest() internal virtual;`
 - `function _withdraw(uint256 _amount) internal virtual;`
 - `function _withdrawAll() internal virtual;`
 - `function balanceOfPool() public view override virtual returns (uint256);`

## Getting contract addressses

Deployed addresses can be obtained by running:

```
yarn hardhat contracts --network kovan
```

### Mainnet

```
RewardsMetavault 0x226f9954A1221cDe805C76CfB312A5d761630E14
RewardsYaxis 0x3b09B9ADFe11f92225b4C55De89fa81456595CD9
RewardsYaxisEth 0xEDaFe410e2f07ab9D7F1B04316D29C2F49dCb104
StableSwap3PoolConverter 0x2eab685d85AA52E4d8b6699Ba5aAC3b0c3992C3B
StableSwap3PoolNonConverter 0x9354b082E5CEdb41422Fb9D4669Ab8b7f8511AeE
StrategyControllerV2 0x0d857688d6A223A2F4e58CDd44119ABb7DC5A790
StrategyCurve3Crv 0x5cd9D7977F9e431399E8186339D9ecBf88eD43F2
StrategyYearnV2-DAI 0xb6C352587F4A92D3c7946bf42fE6D4D3aCd1F312
Swap 0xCdF398537adbF8617a8401B14DCEe7F67CF8c64b
YaxisToken 0x0adA190c81b814548ddC2F6AdC4a689ce7C1FE73
YaxisVotePower 0x01FEF0d5d6Fd6B5701aE913CaFb11dDaeE982C9A
yAxisMetaVaultHarvester 0x5BBc6Ff70680d1DfEFd4685CbdeD5363A4db9b66
yAxisMetaVaultManager 0x443ed48F975E02eA67CA0d2be0B4d4806d1E31F2
```

### Kovan

```
CRV 0x15827C1E7D31ABc35cd9f5c066507bEF3D10C978
DAI 0xa53114780566B3bDB0D36D78E65729305b24FbB8
DAIETH 0x52d1e43b02Eff501EeA418A984Cdccc111A160fA
DF 0xC090b5686B24C2D5eDe2077857a986B6DB73Ad15
ETHUSD 0x7593Db76C339c225dAB578103a4AE7ad333dd56e
MockCurveGauge 0x67c6a7A201cB5f80318691B7Ab82b86Cc444C00b
MockCurveMinter 0x33F04CD467679B47D2a6AD50e3BCeC7d85493edE
MockDRewards 0xfe876a7b49d04073dCa8a1fF0BA07946b78d5229
MockPickleJar 0x13F4cc6C239aBaD03EbD2deAA6A7107E9c6c9BEB
MockPickleMasterChef 0x76f4A0CE3753F745e97e588F8423230B83f4a2F4
MockStabilizePool 0x6bea6113d06CcA2453917d002b9eEB052ea5Dd6A
MockStableSwap3Pool 0xE2C2a45850375c0A8B92b853fcd0a110463ed5Ab
MockUniswapRouter 0x8D037Ea525f150BaD41D0caB990665fE944Cb2F7
MockYaxisChef 0xd75b3d1477F1D1fF28e878E46a8223c1Fa4DDefD
PICKLE 0xCe58c84B9061d91856816a6c6cE9691de567E95C
RewardsMetavault 0xFDAc13A5f54A7f1784FE2d1AA6fA30ee5C92fcb8
RewardsYaxis 0x8Dd07469b35C02cfa294071D456a2d98b5D42Fa9
RewardsYaxisEth 0x71d8189DF0515ac3E2339599FeC1627e6e3AFB72
STBZ 0x5B5fE76B7b866A660C3bAe2f5819a1452Db18174
StableSwap3PoolConverter 0x4981D4A898e1C503BFA06B751f932600E124108f
StrategyControllerV2 0xD3dB7ba937597A3fFAd1174bAed2955852FD5d6D
StrategyCurve3Crv 0x93d0f1F6a544968b914427dc3Befb788Cb75512E
StrategyDforce 0x2d24b957B5a5D0FB6A07EA0b95E693D1b2fe1458
StrategyPickle3Crv 0x4D55b12D0ADbC9f5D83Ff4a4B5572A8C4801dA6a
StrategyStabilize 0xaF25D648B5d72B6238Bd73B4AD935acF25A1cA24
Swap 0x90D647a323DE34057ABb36cC05D530C59a102f9A
T3CRV 0xE7a659F72B2998F10C8Feb9967844134b8D9F778
USDC 0x39B8a63F0c5b65Da458e6fDc5C2e543A80A15Abc
USDCETH 0x86684e326972a8C7f9bd054C1AF02B17C19F21B4
USDT 0xafF39986d82fA86FA77640818ed4b2db4b71f63f
USDTETH 0x09D7F001F171d549f7288a46e247e328D3812f9c
WETH 0xAA8f43ba4A39b40b7CC08d3Cc8CC2428157dff3e
YAX 0xe0e3413740aAF1E2E23278c9692a6c3Bb728E9B0
YaxEthUniswapV2Pair 0xb16792A979F8DDA6A64f8bb8CeA624E85517B436
YaxisEthUniswapV2Pair 0xa18644Cd7FB63571f856BAf354FbF3745173254D
YaxisToken 0x85C09c861E228fcB537BD598264Efe3e32558224
dDAI 0xBFcc19bEBbDcfa2992D83A9f93832Ab1A3fED356
sYAX 0xc5598a5FE5aFFb55308ac06593Af31784606de4C
yAxisMetaVault 0x6e4BA66AD61610098E216991977a067F0680FC96
yAxisMetaVaultHarvester 0xcE6A402d63d84C9dBA56AB3BB679F96210b7986C
yAxisMetaVaultManager 0x15885dE7737B179968B216275b6531f3a668E4E9
zpaDAI 0xC2A5B8A56A3259039C2eB5b749c121C237ffEcf4
```
