.class Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails$Search;
.super Landroid/os/AsyncTask;
.source "Thumbnails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;
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
        "Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;


# direct methods
.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;)V

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

    .line 145
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails$Search;->doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;

    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;->search(Landroid/content/Context;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object p1

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

    .line 145
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails$Search;->onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    return-void
.end method

.method protected onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    invoke-interface {v0, p1}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;->onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 154
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 155
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Thumbnails;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;->onSearchStarted()V

    :cond_0
    return-void
.end method
