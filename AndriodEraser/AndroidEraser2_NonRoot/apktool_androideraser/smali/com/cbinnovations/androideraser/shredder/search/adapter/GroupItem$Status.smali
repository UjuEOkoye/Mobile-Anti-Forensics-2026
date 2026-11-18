.class public final enum Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;
.super Ljava/lang/Enum;
.source "GroupItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

.field public static final enum hasScanned:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

.field public static final enum isActivated:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

.field public static final enum isExpanded:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

.field public static final enum isScanning:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

.field public static final enum shouldScan:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;


# direct methods
.method private static synthetic $values()[Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;
    .locals 3

    const/4 v0, 0x5

    .line 186
    new-array v0, v0, [Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->shouldScan:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isScanning:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->hasScanned:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isExpanded:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isActivated:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 187
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    const-string v1, "shouldScan"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->shouldScan:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    .line 188
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    const-string v1, "isScanning"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isScanning:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    .line 189
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    const-string v1, "hasScanned"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->hasScanned:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    .line 190
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    const-string v1, "isExpanded"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isExpanded:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    .line 191
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    const-string v1, "isActivated"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isActivated:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    .line 186
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->$values()[Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    move-result-object v0

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->$VALUES:[Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

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

    .line 186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 186
    const-class v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    return-object p0
.end method

.method public static values()[Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;
    .locals 1

    .line 186
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->$VALUES:[Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0}, [Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    return-object v0
.end method
