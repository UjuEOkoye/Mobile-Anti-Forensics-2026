.class public final enum Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;
.super Ljava/lang/Enum;
.source "ListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

.field public static final enum Child:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

.field public static final enum Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;


# instance fields
.field private final id:I


# direct methods
.method private static synthetic $values()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;
    .locals 3

    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Child:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    const-string v1, "Group"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    .line 26
    new-instance v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    const-string v1, "Child"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Child:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    .line 24
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->$values()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    move-result-object v0

    sput-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->$VALUES:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 24
    const-class v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;
    .locals 1

    .line 24
    sget-object v0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->$VALUES:[Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    invoke-virtual {v0}, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->id:I

    return v0
.end method
