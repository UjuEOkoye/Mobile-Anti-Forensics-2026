.class public Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSITL_03423;
.super Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
.source "ShredBSITL_03423.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 9
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;-><init>()V

    const v0, 0x7f110031

    .line 10
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSITL_03423;->mName:I

    const v0, 0x7f110032

    .line 11
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSITL_03423;->mDescription:I

    const/16 v0, 0x8

    .line 12
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSITL_03423;->mCycles:I

    .line 13
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;->BSI_TL_03423:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    iput-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSITL_03423;->mValue:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    .line 14
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->ENT:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    iput-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSITL_03423;->mVersion:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    .line 15
    new-array v0, v0, [[I

    const/16 v1, 0xff

    filled-new-array {v1}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    filled-new-array {v3}, [I

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, -0x1

    filled-new-array {v2}, [I

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    filled-new-array {v1}, [I

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v0, v4

    filled-new-array {v3}, [I

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0xaa

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredBSITL_03423;->mPattern:[[I

    return-void
.end method
