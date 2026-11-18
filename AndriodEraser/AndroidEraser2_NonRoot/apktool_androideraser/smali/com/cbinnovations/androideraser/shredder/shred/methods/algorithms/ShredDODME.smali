.class public Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredDODME;
.super Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
.source "ShredDODME.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;-><init>()V

    const v0, 0x7f110076

    .line 10
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredDODME;->mName:I

    const v0, 0x7f110077

    .line 11
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredDODME;->mDescription:I

    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredDODME;->mCycles:I

    .line 13
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;->DoD5220_22_ME:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    iput-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredDODME;->mValue:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    .line 14
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->PRO:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    iput-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredDODME;->mVersion:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    .line 15
    new-array v0, v0, [[I

    const/16 v1, 0x35

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xca

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, -0x1

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredDODME;->mPattern:[[I

    return-void
.end method
