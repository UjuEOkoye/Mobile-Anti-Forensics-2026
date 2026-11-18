.class public Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredCSEC_ITSG_06;
.super Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
.source "ShredCSEC_ITSG_06.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;-><init>()V

    const v0, 0x7f11006b

    .line 10
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredCSEC_ITSG_06;->mName:I

    const v0, 0x7f11006c

    .line 11
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredCSEC_ITSG_06;->mDescription:I

    const/4 v0, 0x3

    .line 12
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredCSEC_ITSG_06;->mCycles:I

    .line 13
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;->CSEC_ITSG06:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    iput-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredCSEC_ITSG_06;->mValue:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Value;

    .line 14
    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->MIL:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    iput-object v1, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredCSEC_ITSG_06;->mVersion:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    .line 15
    new-array v0, v0, [[I

    const/16 v1, 0xff

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    filled-new-array {v2}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, -0x1

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/algorithms/ShredCSEC_ITSG_06;->mPattern:[[I

    return-void
.end method
