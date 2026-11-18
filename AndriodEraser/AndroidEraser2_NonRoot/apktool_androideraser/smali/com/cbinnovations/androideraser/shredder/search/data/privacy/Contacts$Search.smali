.class Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;
.super Landroid/os/AsyncTask;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;
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
.field private final activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;


# direct methods
.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;)V

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

    .line 112
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;->doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
    .locals 2

    const/4 p1, 0x1

    .line 127
    new-array p1, p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;->-$$Nest$fgetcontext(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;->search(Landroid/content/Context;)Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

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

    .line 112
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;->onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    return-void
.end method

.method protected onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V
    .locals 1

    .line 131
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    invoke-interface {v0, p1}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;->onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 122
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/Contacts;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;->onSearchStarted()V

    :cond_0
    return-void
.end method
