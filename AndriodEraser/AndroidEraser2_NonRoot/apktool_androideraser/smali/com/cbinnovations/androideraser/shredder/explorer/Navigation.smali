.class public Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;
.super Landroid/widget/LinearLayout;
.source "Navigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbinnovations/androideraser/shredder/explorer/Navigation$ChangeListener;
    }
.end annotation


# instance fields
.field private changeListener:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation$ChangeListener;

.field private final history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private root:Landroidx/documentfile/provider/DocumentFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->root:Landroidx/documentfile/provider/DocumentFile;

    .line 35
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->root:Landroidx/documentfile/provider/DocumentFile;

    .line 40
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->root:Landroidx/documentfile/provider/DocumentFile;

    .line 45
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->root:Landroidx/documentfile/provider/DocumentFile;

    .line 51
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private removeItemTo(Landroidx/documentfile/provider/DocumentFile;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 136
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->removeAllViews()V

    return-void
.end method


# virtual methods
.method public addItem(Landroidx/documentfile/provider/DocumentFile;ILandroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->addItem(Landroidx/documentfile/provider/DocumentFile;ILandroid/view/View$OnClickListener;I)V

    return-void
.end method

.method public addItem(Landroidx/documentfile/provider/DocumentFile;ILandroid/view/View$OnClickListener;I)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p3, 0x0

    if-lez p4, :cond_0

    .line 101
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide v2, 0x4041800000000000L    # 35.0

    invoke-static {v1, v2, v3}, Lcom/cbinnovations/androideraser/utils/Utility;->dpToInt(Landroid/content/Context;D)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    invoke-virtual {v0, p3, p3, p4, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 103
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    :cond_0
    invoke-virtual {p0, p2}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->addView(Landroid/view/View;)V

    .line 107
    iget-object p2, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p2, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->changeListener:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation$ChangeListener;

    if-eqz p2, :cond_1

    const/4 p4, 0x1

    .line 109
    invoke-interface {p2, p1, p4, p3}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation$ChangeListener;->itemChanged(Landroidx/documentfile/provider/DocumentFile;ZZ)V

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->root:Landroidx/documentfile/provider/DocumentFile;

    .line 164
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->removeAllViews()V

    return-void
.end method

.method public getCurrentDirectory(Z)Landroidx/documentfile/provider/DocumentFile;
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->getCurrentRoot()Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    return-object p1

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/documentfile/provider/DocumentFile;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentRoot()Landroidx/documentfile/provider/DocumentFile;
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/documentfile/provider/DocumentFile;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHistory()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasItems()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public jumpToItem(Landroidx/documentfile/provider/DocumentFile;)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->removeItemTo(Landroidx/documentfile/provider/DocumentFile;)V

    .line 117
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->changeListener:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation$ChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 118
    invoke-interface {v0, p1, v1, v1}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation$ChangeListener;->itemChanged(Landroidx/documentfile/provider/DocumentFile;ZZ)V

    :cond_0
    return-void
.end method

.method public previous()Landroidx/documentfile/provider/DocumentFile;
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/documentfile/provider/DocumentFile;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setChangeListener(Lcom/cbinnovations/androideraser/shredder/explorer/Navigation$ChangeListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->changeListener:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation$ChangeListener;

    return-void
.end method

.method public setCurrentRoot(Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->root:Landroidx/documentfile/provider/DocumentFile;

    return-void
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->changeListener:Lcom/cbinnovations/androideraser/shredder/explorer/Navigation$ChangeListener;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->hasItems()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/documentfile/provider/DocumentFile;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/cbinnovations/androideraser/shredder/explorer/Navigation$ChangeListener;->itemChanged(Landroidx/documentfile/provider/DocumentFile;ZZ)V

    :cond_1
    return-void
.end method
