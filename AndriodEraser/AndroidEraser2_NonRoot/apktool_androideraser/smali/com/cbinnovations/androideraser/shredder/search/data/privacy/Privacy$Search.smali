.class Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;
.super Landroid/os/AsyncTask;
.source "Privacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;
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
.field private final activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

.field private final clipboard:Landroid/content/ClipboardManager;


# direct methods
.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    .line 54
    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->clipboard:Landroid/content/ClipboardManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;)V

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

    .line 46
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
    .locals 6

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->isCancelled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->clipboard:Landroid/content/ClipboardManager;

    iget-object v3, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    invoke-static {v3}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;)Landroid/content/Context;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v1, v3, v4, v5}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/ClipBoard;->get(Landroid/content/ClipboardManager;Landroid/content/Context;ZZ)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;)Landroid/content/Context;

    move-result-object v1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;->get(Landroid/content/Context;ZZ)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;)Landroid/content/Context;

    move-result-object v1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x4

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Photos;->get(Landroid/content/Context;ZZ)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;)Landroid/content/Context;

    move-result-object v1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x5

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Videos;->get(Landroid/content/Context;ZZ)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 75
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;)Landroid/content/Context;

    move-result-object v1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x6

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Music;->get(Landroid/content/Context;ZZ)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_4
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 77
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;)Landroid/content/Context;

    move-result-object v1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x7

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;->get(Landroid/content/Context;ZZ)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 79
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;)Landroid/content/Context;

    move-result-object v1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0x8

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;->get(Landroid/content/Context;ZZ)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_6
    new-instance p1, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search$1;

    invoke-direct {p1, p0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search$1;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
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

    .line 46
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->onCancelled([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    return-void
.end method

.method protected onCancelled([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
    .locals 3

    .line 100
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    invoke-static {v1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;)Landroid/content/Context;

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

    .line 46
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V

    return-void
.end method

.method protected onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)V
    .locals 5

    .line 91
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/Storage;->getChildItemsSize([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "~ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/cbinnovations/androideraser/shredder/Storage;->humanReadableByteCount(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    iget-object v1, v1, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;

    invoke-interface {v1, p1, v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;->onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 60
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Privacy;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchListener$OnSearchListener;->onSearchStarted()V

    :cond_0
    return-void
.end method
