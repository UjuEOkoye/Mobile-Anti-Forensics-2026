.class public Lcom/cbinnovations/androideraser/Summary$Adapter;
.super Landroid/widget/BaseAdapter;
.source "Summary.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/Summary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final mSummaryItems:[Lcom/cbinnovations/androideraser/Summary$Item;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/cbinnovations/androideraser/Summary$Item;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/cbinnovations/androideraser/Summary$Adapter;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/cbinnovations/androideraser/Summary$Adapter;->mSummaryItems:[Lcom/cbinnovations/androideraser/Summary$Item;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/cbinnovations/androideraser/Summary$Adapter;->mSummaryItems:[Lcom/cbinnovations/androideraser/Summary$Item;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/cbinnovations/androideraser/Summary$Item;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/cbinnovations/androideraser/Summary$Adapter;->mSummaryItems:[Lcom/cbinnovations/androideraser/Summary$Item;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/cbinnovations/androideraser/Summary$Adapter;->getItem(I)Lcom/cbinnovations/androideraser/Summary$Item;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/cbinnovations/androideraser/Summary$Adapter;->mSummaryItems:[Lcom/cbinnovations/androideraser/Summary$Item;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/cbinnovations/androideraser/Summary$Adapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b002d

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f08013e

    .line 67
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f08013c

    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080121

    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    iget-object v2, p0, Lcom/cbinnovations/androideraser/Summary$Adapter;->mSummaryItems:[Lcom/cbinnovations/androideraser/Summary$Item;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/cbinnovations/androideraser/Summary$Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p3, p0, Lcom/cbinnovations/androideraser/Summary$Adapter;->mSummaryItems:[Lcom/cbinnovations/androideraser/Summary$Item;

    aget-object p3, p3, p1

    invoke-virtual {p3}, Lcom/cbinnovations/androideraser/Summary$Item;->getAmount()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p3, p0, Lcom/cbinnovations/androideraser/Summary$Adapter;->mSummaryItems:[Lcom/cbinnovations/androideraser/Summary$Item;

    aget-object p3, p3, p1

    invoke-virtual {p3}, Lcom/cbinnovations/androideraser/Summary$Item;->getSubtitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p1, 0x8

    .line 74
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2

    :cond_1
    const/4 p3, 0x0

    .line 76
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object p3, p0, Lcom/cbinnovations/androideraser/Summary$Adapter;->mSummaryItems:[Lcom/cbinnovations/androideraser/Summary$Item;

    aget-object p1, p3, p1

    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/Summary$Item;->getSubtitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
