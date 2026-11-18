.class public Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;
.super Ljava/lang/Object;
.source "ExplorerStorage.java"


# instance fields
.field public granted:Landroidx/documentfile/provider/DocumentFile;

.field public original:Landroidx/documentfile/provider/DocumentFile;


# direct methods
.method public constructor <init>(Landroidx/documentfile/provider/DocumentFile;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    .line 13
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->granted:Landroidx/documentfile/provider/DocumentFile;

    return-void
.end method


# virtual methods
.method public hasGranted()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->granted:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
