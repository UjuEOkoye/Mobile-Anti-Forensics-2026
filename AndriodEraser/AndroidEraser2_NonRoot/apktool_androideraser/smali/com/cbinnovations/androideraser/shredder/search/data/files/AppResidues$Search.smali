.class Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;
.super Landroid/os/AsyncTask;
.source "AppResidues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;
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
.field private final activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;


# direct methods
.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;)V

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

    .line 106
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;->doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
    .locals 2

    const/4 p1, 0x1

    .line 121
    new-array p1, p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;->search(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

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

    .line 106
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;->onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    return-void
.end method

.method protected onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    invoke-interface {v0, p1}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;->onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 116
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/files/AppResidues;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;->onSearchStarted()V

    :cond_0
    return-void
.end method
