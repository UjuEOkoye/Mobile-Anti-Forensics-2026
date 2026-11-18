.class public Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredNato;
.super Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
.source "ShredNato.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 9
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;-><init>()V

    const v0, 0x7f110112

    .line 10
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredNato;->mName:I

    const v0, 0x7f110113

    .line 11
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredNato;->mDescription:I

    const/4 v0, 0x7

    .line 12
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredNato;->mCycles:I

    .line 13
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;->NATO:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    iput-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredNato;->mValue:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    .line 14
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->PRO:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    iput-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredNato;->mVersion:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    .line 15
    new-array v0, v0, [[I

    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v2, 0xff

    filled-new-array {v2}, [I

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    filled-new-array {v1}, [I

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    filled-new-array {v2}, [I

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    filled-new-array {v2}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, -0x1

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredNato;->mPattern:[[I

    return-void
.end method
