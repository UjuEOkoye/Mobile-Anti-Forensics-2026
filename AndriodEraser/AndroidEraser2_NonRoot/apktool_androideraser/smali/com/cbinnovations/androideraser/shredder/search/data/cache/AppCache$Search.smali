.class Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;
.super Landroid/os/AsyncTask;
.source "AppCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;
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
.field private final activity:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;

.field private currentPosition:I


# direct methods
.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->currentPosition:I

    .line 56
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;)V

    return-void
.end method

.method private getFiles(Ljava/lang/String;Ljava/io/File;Z)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 169
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 170
    array-length v3, v1

    if-lez v3, :cond_2

    .line 171
    array-length p3, v1

    const/4 v3, 0x0

    if-ne p3, v2, :cond_1

    aget-object p3, v1, v3

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v4, ".nomedia"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 172
    new-instance p3, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v2, p2, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 174
    :cond_1
    array-length p2, v1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    aget-object v2, v1, p3

    .line 175
    invoke-direct {p0, p1, v2, v3}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->getFiles(Ljava/lang/String;Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    .line 179
    new-instance p3, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v2, p2, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-object v0

    .line 182
    :cond_4
    new-instance p3, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v2, p2, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$CacheItem;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
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

    .line 50
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
    .locals 12

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 68
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 69
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 70
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/Storage;->getApplicationDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "data"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v3, 0x80

    .line 71
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 72
    iput v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->currentPosition:I

    .line 74
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 75
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    .line 78
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 81
    invoke-virtual {v4, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6, v8}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->getFiles(Ljava/lang/String;Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 85
    new-instance v6, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    sget-object v7, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;->cache:Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;

    new-instance v9, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;

    .line 86
    invoke-virtual {v4, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const-string v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v9, v10, v8}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;-><init>(Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Type;Lcom/cbinnovations/androideraser/shredder/search/adapter/GroupItem$Header;[Ljava/lang/String;Z)V

    .line 88
    new-array v7, v8, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    new-instance v8, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    invoke-virtual {v4, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v8, v4, v5}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    aput-object v8, v7, v1

    invoke-virtual {v6, v7}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;->setChildData([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    .line 89
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 138
    :cond_3
    :goto_1
    new-instance p1, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search$1;

    invoke-direct {p1, p0}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search$1;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    :cond_4
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

    .line 50
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->onCancelled([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    return-void
.end method

.method protected onCancelled([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
    .locals 3

    .line 159
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;)Landroid/content/Context;

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

    .line 50
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    return-void
.end method

.method protected onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
    .locals 5

    .line 150
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/Storage;->getChildItemsSize([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 153
    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;

    invoke-interface {v1, p1, v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;->onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 61
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/cache/AppCache;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;->onSearchStarted()V

    :cond_0
    return-void
.end method
