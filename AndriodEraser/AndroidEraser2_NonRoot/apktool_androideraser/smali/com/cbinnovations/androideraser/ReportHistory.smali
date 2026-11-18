.class public Lcom/cbinnovations/androideraser/ReportHistory;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ReportHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

.field private mActionMode:Landroid/view/ActionMode;

.field private final mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mMenu:Landroid/view/Menu;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final remove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/cbinnovations/androideraser/ReportHistory;)Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->adapter:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActionMode(Lcom/cbinnovations/androideraser/ReportHistory;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActionModeCallback(Lcom/cbinnovations/androideraser/ReportHistory;)Landroid/view/ActionMode$Callback;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/cbinnovations/androideraser/ReportHistory;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReports(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mReports:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremove(Lcom/cbinnovations/androideraser/ReportHistory;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->remove:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettinyDB(Lcom/cbinnovations/androideraser/ReportHistory;)Lcom/cbinnovations/androideraser/utils/TinyDB;
    .locals 0

    iget-object p0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputadapter(Lcom/cbinnovations/androideraser/ReportHistory;Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory;->adapter:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmActionMode(Lcom/cbinnovations/androideraser/ReportHistory;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideOption(Lcom/cbinnovations/androideraser/ReportHistory;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ReportHistory;->hideOption(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowOption(Lcom/cbinnovations/androideraser/ReportHistory;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/ReportHistory;->showOption(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->remove:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/cbinnovations/androideraser/ReportHistory$1;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/ReportHistory$1;-><init>(Lcom/cbinnovations/androideraser/ReportHistory;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method private hideOption(I)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    .line 186
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private initOnCreate()V
    .locals 3

    .line 123
    new-instance v0, Lcom/cbinnovations/androideraser/utils/TinyDB;

    invoke-direct {v0, p0}, Lcom/cbinnovations/androideraser/utils/TinyDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    .line 124
    const-string v1, "cb_language"

    const-string v2, "en"

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cbinnovations/androideraser/utils/Language;->load(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f080134

    .line 125
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/ReportHistory;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 126
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/ReportHistory;->initRecyclerView()V

    return-void
.end method

.method private initRecyclerView()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 131
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 132
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->tinyDB:Lcom/cbinnovations/androideraser/utils/TinyDB;

    const-string v1, "savekey_reports"

    const-class v2, Lcom/cbinnovations/androideraser/shredder/report/Report;

    invoke-virtual {v0, v1, v2}, Lcom/cbinnovations/androideraser/utils/TinyDB;->getListObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mReports:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mReports:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;-><init>(Lcom/cbinnovations/androideraser/ReportHistory;Landroid/content/Context;Ljava/util/ArrayList;Lcom/cbinnovations/androideraser/ReportHistory-IA;)V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->adapter:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    .line 135
    iget-object v1, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private showOption(I)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    .line 191
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0021

    .line 117
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ReportHistory;->setContentView(I)V

    const p1, 0x7f110135

    .line 118
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ReportHistory;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ReportHistory;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    invoke-direct {p0}, Lcom/cbinnovations/androideraser/ReportHistory;->initOnCreate()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ReportHistory;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0008

    .line 157
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 158
    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mMenu:Landroid/view/Menu;

    .line 160
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mReports:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const v0, 0x7f080042

    if-eqz p1, :cond_0

    .line 161
    invoke-direct {p0, v0}, Lcom/cbinnovations/androideraser/ReportHistory;->hideOption(I)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0, v0}, Lcom/cbinnovations/androideraser/ReportHistory;->showOption(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Ljava/lang/Integer;)V
    .locals 2

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cbinnovations/androideraser/ReportDisplay;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    const-string v1, "Report"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/ReportHistory;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f080042

    if-eq v0, v1, :cond_0

    .line 181
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mReports:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mActionMode:Landroid/view/ActionMode;

    if-nez p1, :cond_1

    .line 176
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/ReportHistory;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mActionMode:Landroid/view/ActionMode;

    .line 177
    iget-object p1, p0, Lcom/cbinnovations/androideraser/ReportHistory;->adapter:Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/ReportHistory$ReportPanelAdapter;->notifyDataSetChanged()V

    :cond_1
    return v2

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/ReportHistory;->finish()V

    return v2
.end method

.method protected onResume()V
    .locals 3

    .line 145
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 146
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mReports:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const v1, 0x7f080042

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/cbinnovations/androideraser/ReportHistory;->hideOption(I)V

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/cbinnovations/androideraser/ReportHistory;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/cbinnovations/androideraser/ReportHistory;->showOption(I)V

    :cond_1
    return-void
.end method
