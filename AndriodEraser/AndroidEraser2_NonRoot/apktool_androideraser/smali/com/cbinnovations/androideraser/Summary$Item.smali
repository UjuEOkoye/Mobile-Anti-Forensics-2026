.class public Lcom/cbinnovations/androideraser/Summary$Item;
.super Ljava/lang/Object;
.source "Summary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/Summary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final amount:I

.field private final subtitle:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/cbinnovations/androideraser/Summary$Item;->title:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/cbinnovations/androideraser/Summary$Item;->subtitle:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/cbinnovations/androideraser/Summary$Item;->amount:I

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/cbinnovations/androideraser/Summary$Item;->amount:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/cbinnovations/androideraser/Summary$Item;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/cbinnovations/androideraser/Summary$Item;->title:Ljava/lang/String;

    return-object v0
.end method
