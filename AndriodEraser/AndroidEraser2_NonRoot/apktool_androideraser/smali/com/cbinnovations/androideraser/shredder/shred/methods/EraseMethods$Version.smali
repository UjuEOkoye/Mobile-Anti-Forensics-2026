.class public final enum Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;
.super Ljava/lang/Enum;
.source "EraseMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

.field public static final enum ENT:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

.field public static final enum MIL:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

.field public static final enum PRO:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

.field public static final enum STD:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;


# direct methods
.method private static synthetic $values()[Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;
    .locals 3

    const/4 v0, 0x4

    .line 31
    new-array v0, v0, [Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->STD:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->PRO:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->ENT:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->MIL:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    const-string v1, "STD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->STD:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    .line 33
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    const-string v1, "PRO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->PRO:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    .line 34
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    const-string v1, "ENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->ENT:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    .line 35
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    const-string v1, "MIL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->MIL:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    .line 31
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->$values()[Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    move-result-object v0

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->$VALUES:[Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    const-class v0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    return-object p0
.end method

.method public static values()[Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;
    .locals 1

    .line 31
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->$VALUES:[Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    invoke-virtual {v0}, [Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$Version;

    return-object v0
.end method
