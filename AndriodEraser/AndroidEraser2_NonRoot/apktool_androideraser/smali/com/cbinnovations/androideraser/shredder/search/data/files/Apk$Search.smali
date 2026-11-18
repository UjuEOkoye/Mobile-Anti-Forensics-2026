.class Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk$Search;
.super Landroid/os/AsyncTask;
.source "Apk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;
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
.field private final activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;


# direct methods
.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;)V

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

    .line 99
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk$Search;->doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
    .locals 2

    const/4 p1, 0x1

    .line 114
    new-array p1, p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;->search(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

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

    .line 99
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk$Search;->onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    return-void
.end method

.method protected onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    invoke-interface {v0, p1}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;->onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 108
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 109
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/files/Apk;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;->onSearchStarted()V

    :cond_0
    return-void
.end method
