.class Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;
.super Landroid/os/AsyncTask;
.source "Devices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Search"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;


# direct methods
.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;)V

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

    .line 65
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
    .locals 13

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils;->getStorageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;

    .line 82
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_6

    :cond_1
    if-eqz v2, :cond_0

    .line 85
    iget-boolean v3, v2, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->removable:Z

    const/4 v4, 0x2

    if-nez v3, :cond_2

    aget-object v3, p1, v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 91
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    iget-boolean v3, v2, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->readonly:Z

    if-nez v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v5}, Landroidx/documentfile/provider/DocumentFile;->fromFile(Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->getGrantedDocumentFile(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    .line 96
    new-instance v6, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    aget-object v7, p1, v4

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->freespace:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    goto :goto_1

    :cond_3
    sget-object v7, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->completeErase:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    :goto_1
    new-instance v8, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    iget-object v9, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    invoke-static {v9}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;)Landroid/content/Context;

    move-result-object v9

    .line 97
    iget-boolean v10, v2, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->removable:Z

    if-nez v10, :cond_4

    const v10, 0x7f0e0012

    goto :goto_2

    :cond_4
    const v10, 0x7f0e001f

    :goto_2
    invoke-static {v9, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    invoke-static {v10}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;)Landroid/content/Context;

    move-result-object v10

    .line 98
    invoke-virtual {v2, v10}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 99
    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cbinnovations/androideraser/shredder/Storage;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/cbinnovations/androideraser/shredder/Storage;->getTotalSize(Ljava/lang/String;)J

    move-result-wide v11

    :goto_3
    invoke-static {v11, v12}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v9, v10, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v8, v4}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;[Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 102
    aget-object v7, p1, v4

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_6

    .line 103
    sget-object v2, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->notBought:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v6, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    goto :goto_5

    .line 104
    :cond_6
    iget-object v7, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    invoke-static {v7}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->getPermission()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/cbinnovations/androideraser/utils/Permission;->has(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 105
    sget-object v7, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->success:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v6, v7}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    .line 106
    new-array v7, v4, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    new-instance v8, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    iget-object v9, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    invoke-static {v9}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/StorageUtils$StorageInfo;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;

    invoke-static {v5}, Landroidx/documentfile/provider/DocumentFile;->fromFile(Ljava/io/File;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v5

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-direct {v9, v5, v3}, Lcom/cbinnovations/androideraser/shredder/explorer/ExplorerStorage;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroidx/documentfile/provider/DocumentFile;)V

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    invoke-direct {v8, v2, v3}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    aput-object v8, v7, v4

    invoke-virtual {v6, v7}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setChildData([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    goto :goto_5

    .line 108
    :cond_8
    sget-object v2, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;->missingPermission:Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;

    invoke-virtual {v6, v2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setReason(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$Reason;)V

    .line 111
    :goto_5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    .line 114
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 119
    :cond_9
    :goto_6
    new-instance p1, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search$1;

    invoke-direct {p1, p0}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search$1;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    return-object p1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 65
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->onCancelled([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    return-void
.end method

.method protected onCancelled([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
    .locals 3

    .line 138
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110041

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;->onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;Ljava/lang/String;)V

    :cond_0
    return-void
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

    .line 65
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    return-void
.end method

.method protected onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
    .locals 5

    .line 129
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/Storage;->getChildItemsSize([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 132
    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;

    invoke-interface {v1, p1, v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;->onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 75
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/devices/Devices;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;->onSearchStarted()V

    :cond_0
    return-void
.end method
