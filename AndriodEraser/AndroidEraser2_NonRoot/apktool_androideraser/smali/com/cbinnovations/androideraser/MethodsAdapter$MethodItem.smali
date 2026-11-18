.class public Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;
.super Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;
.source "MethodsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/MethodsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodItem"
.end annotation


# instance fields
.field private image:I

.field private final mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

.field private final mStatusHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetimage(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)I
    .locals 0

    iget p0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->image:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEraseMethod(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetStatusHistory(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->getStatusHistory()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misExpanded(Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->isExpanded()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;)V
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;-><init>()V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->mStatusHistory:Ljava/util/ArrayList;

    .line 200
    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    .line 201
    invoke-virtual {p0, p2}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->setViewType(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;)V

    return-void
.end method

.method public constructor <init>(Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;I)V
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem;-><init>()V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->mStatusHistory:Ljava/util/ArrayList;

    .line 205
    iput-object p1, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    .line 206
    iput p3, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->image:I

    .line 207
    invoke-virtual {p0, p2}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->setViewType(Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;)V

    return-void
.end method

.method private getStatusHistory()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->mStatusHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method private isExpanded()Z
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->getViewType()Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    move-result-object v0

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;->Group:Lcom/cbinnovations/androideraser/shredder/search/adapter/ListItem$ViewType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->mStatusHistory:Ljava/util/ArrayList;

    sget-object v1, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;->isExpanded:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Status;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getEraseMethod()Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/cbinnovations/androideraser/MethodsAdapter$MethodItem;->mEraseMethod:Lcom/cbinnovations/androideraser/shredder/shred/methods/EraseMethods$EraseMethod;

    return-object v0
.end method
