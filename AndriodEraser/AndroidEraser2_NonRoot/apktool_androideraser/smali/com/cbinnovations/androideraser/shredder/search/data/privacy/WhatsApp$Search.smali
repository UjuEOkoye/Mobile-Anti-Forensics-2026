.class Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp$Search;
.super Landroid/os/AsyncTask;
.source "WhatsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;
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
.field private final activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;


# direct methods
.method private constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp$Search;-><init>(Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;)V

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

    .line 135
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp$Search;->doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
    .locals 0

    .line 150
    invoke-static {}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;->search()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

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

    .line 135
    check-cast p1, [Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp$Search;->onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    return-void
.end method

.method protected onPostExecute([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    invoke-interface {v0, p1}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;->onSearchFinished([Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 144
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 145
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;

    invoke-virtual {v0}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;->hasSearchListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp$Search;->activity:Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;

    iget-object v0, v0, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;->onSearchFinishedListener:Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;

    invoke-interface {v0}, Lcom/cbinnovations/androideraser/shredder/search/SearchChildListener$OnSearchListener;->onSearchStarted()V

    :cond_0
    return-void
.end method
