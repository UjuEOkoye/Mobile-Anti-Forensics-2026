.class public Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSI_2011_VS;
.super Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
.source "ShredBSI_2011_VS.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 10
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;-><init>()V

    const v0, 0x7f110033

    .line 11
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSI_2011_VS;->mName:I

    const v0, 0x7f110034

    .line 12
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSI_2011_VS;->mDescription:I

    const/4 v0, 0x5

    .line 13
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSI_2011_VS;->mCycles:I

    .line 14
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;->BSI_2011_VS:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    iput-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSI_2011_VS;->mValue:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    .line 15
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->MIL:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    iput-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSI_2011_VS;->mVersion:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    .line 16
    new-array v0, v0, [[I

    const/4 v1, -0x1

    filled-new-array {v1}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xff

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    filled-new-array {v3}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    filled-new-array {v3}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSI_2011_VS;->mPattern:[[I

    return-void
.end method
