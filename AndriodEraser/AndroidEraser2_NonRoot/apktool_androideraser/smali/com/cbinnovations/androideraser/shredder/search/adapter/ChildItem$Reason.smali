.class public final enum Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;
.super Ljava/lang/Enum;
.source "ChildItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

.field public static final enum missingPermission:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

.field public static final enum notBought:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

.field public static final enum notSupported:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

.field public static final enum nothingFound:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

.field public static final enum skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

.field public static final enum success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;


# instance fields
.field private final reason:I


# direct methods
.method private static synthetic $values()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;
    .locals 3

    const/4 v0, 0x6

    .line 265
    new-array v0, v0, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->missingPermission:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->nothingFound:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->notBought:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->notSupported:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 266
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v1, 0x0

    const v2, 0x7f1100ce

    const-string v3, "missingPermission"

    invoke-direct {v0, v3, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->missingPermission:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    .line 267
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v1, 0x1

    const v2, 0x7f11011b

    const-string v3, "nothingFound"

    invoke-direct {v0, v3, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->nothingFound:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    .line 268
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v1, 0x2

    const v2, 0x7f110136

    const-string v3, "notBought"

    invoke-direct {v0, v3, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->notBought:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    .line 269
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v1, 0x3

    const v2, 0x7f11011a

    const-string v3, "notSupported"

    invoke-direct {v0, v3, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->notSupported:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    .line 270
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v1, 0x4

    const v2, 0x7f110160

    const-string v3, "success"

    invoke-direct {v0, v3, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    .line 271
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    const/4 v1, 0x5

    const v2, 0x7f110151

    const-string v3, "skipped"

    invoke-direct {v0, v3, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->skipped:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    .line 265
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->$values()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    move-result-object v0

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->$VALUES:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 275
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 276
    iput p3, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->reason:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 265
    const-class v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    return-object p0
.end method

.method public static values()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;
    .locals 1

    .line 265
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->$VALUES:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v0}, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->reason:I

    return v0
.end method

.method public toString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 284
    iget v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->reason:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
