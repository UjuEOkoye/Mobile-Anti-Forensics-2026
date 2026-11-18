.class Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;
.super Landroid/os/AsyncTask;
.source "ShredderNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shred/ShredderNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrepareFiles"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cbinnovations/androideraser/shred/ShredderNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cbinnovations/androideraser/shred/ShredderNotification;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cbinnovations/androideraser/shred/ShredderNotification;",
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->activity:Ljava/lang/ref/WeakReference;

    .line 226
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->selectedPaths:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 219
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->doInBackground([Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;)[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;)[Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;
    .locals 7

    const/4 v0, 0x0

    .line 235
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->granted:Landroidx/documentfile/provider/DocumentFile;

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iget-object v3, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->selectedPaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getParentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 238
    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;->original:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, p1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 241
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    invoke-virtual {v1, v3}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_7

    .line 247
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 248
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget-object v3, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->selectedPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/documentfile/provider/DocumentFile;

    .line 251
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    .line 252
    :cond_2
    invoke-virtual {v4}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 255
    :cond_3
    :goto_3
    array-length v3, p1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_7

    aget-object v5, p1, v4

    .line 256
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    .line 257
    :cond_4
    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 258
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 260
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(I)V

    .line 262
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    const/4 p1, 0x1

    .line 269
    new-array p1, p1, [Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    new-instance v1, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    sget-object v3, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->file:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    invoke-direct {v1, v3, v2}, Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Ljava/util/ArrayList;)V

    aput-object v1, p1, v0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 219
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->onPostExecute([Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V

    return-void
.end method

.method protected onPostExecute([Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V
    .locals 1

    .line 273
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-virtual {v0, p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->setData([Lcom/cbinnovations/androideraser/shredder/shred/adapters/SelectedData;)V

    .line 275
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->start()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 230
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 231
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shred/ShredderNotification;->-$$Nest$fgetservice(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;

    move-result-object v0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shred/ShredderNotification$PrepareFiles;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cbinnovations/androideraser/shred/ShredderNotification;

    invoke-virtual {v0, v1}, Lcom/cbinnovations/androideraser/shred/ShredderNotificationService;->createNotification(Lcom/cbinnovations/androideraser/shred/ShredderNotification;)V

    return-void
.end method
