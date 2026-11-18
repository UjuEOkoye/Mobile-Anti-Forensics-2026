.class public Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/Shred0x00;
.super Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
.source "Shred0x00.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;-><init>()V

    const v0, 0x7f11011e

    .line 10
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/Shred0x00;->mName:I

    const v0, 0x7f11011f

    .line 11
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/Shred0x00;->mDescription:I

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/Shred0x00;->mCycles:I

    .line 13
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;->N0x00:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    iput-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/Shred0x00;->mValue:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    .line 14
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->ENT:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    iput-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/Shred0x00;->mVersion:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    .line 15
    new-array v0, v0, [[I

    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/Shred0x00;->mPattern:[[I

    return-void
.end method
