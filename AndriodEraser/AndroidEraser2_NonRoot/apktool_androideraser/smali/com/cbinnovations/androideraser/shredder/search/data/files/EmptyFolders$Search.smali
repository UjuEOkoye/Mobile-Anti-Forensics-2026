.class Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders$Search;
.super Landroid/os/AsyncTask;
.source "EmptyFolders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;
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
.field private final activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;


# direct methods
.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;)V

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

    .line 117
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders$Search;->doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
    .locals 2

    const/4 p1, 0x1

    .line 132
    new-array p1, p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;->search(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

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

    .line 117
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders$Search;->onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    return-void
.end method

.method protected onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    invoke-interface {v0, p1}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;->onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 127
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/files/EmptyFolders;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;->onSearchStarted()V

    :cond_0
    return-void
.end method
