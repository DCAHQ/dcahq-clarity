(use-trait ft-trait-a 'SP102V8P0F7JX67ARQ77WEA3D3CFB5XW39REDT0AM.trait-sip-010.sip-010-trait)
(use-trait ft-trait-b 'SP2AKWJYC7BNY18W1XXKPGP0YVEK63QJG4793Z2D4.sip-010-trait-ft-standard.sip-010-trait)
(use-trait share-fee-to-trait 'SP1Y5YSTAHZ88XYK1VPDH24GY0HPX5J4JECTMY4A1.univ2-share-fee-to-trait.share-fee-to-trait)

(define-trait default-strategy
    (
        (alex-swap-wrapper (
            <ft-trait-a> 
            <ft-trait-a> 
            uint 
            uint 
            uint
            uint
            (optional <ft-trait-a>) 
        ) (response uint uint))

        (velar-swap-wrapper (
            uint 
            <ft-trait-b> 
            <ft-trait-b> 
            <ft-trait-b> 
            <ft-trait-b> 
            <share-fee-to-trait>
            uint 
            uint 
        ) (response uint uint))
        ;; ) (response (tuple (a uint) (amt-fee-lps uint) (amt-fee-protocol uint) (amt-fee-rest uint) (amt-fee-share uint) (amt-in uint) (amt-in-adjusted uint) (amt-out uint) (b uint) (b0 uint) (b1 uint) (id uint) (k uint) (op (string-ascii 4)) (pool (tuple (block-height uint) (burn-block-height uint) (lp-token principal) (protocol-fee (tuple (den uint) (num uint))) (reserve0 uint) (reserve1 uint) (share-fee (tuple (den uint) (num uint))) (swap-fee (tuple (den uint) (num uint))) (symbol (string-ascii 65)) (token0 principal) (token1 principal))) (token-in <ft-trait-b>) (token-out <ft-trait-b>) (user principal)) uint))
))