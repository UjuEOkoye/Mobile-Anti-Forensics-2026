.class Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp$1;
.super Ljava/lang/Object;
.source "WhatsApp.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp;->search()[Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)I
    .locals 0

    .line 102
    invoke-virtual {p1}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 100
    check-cast p1, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    check-cast p2, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;

    invoke-virtual {p0, p1, p2}, Lcom/cbinnovations/androideraser/shredder/search/data/privacy/WhatsApp$1;->compare(Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;)I

    move-result p1

    return p1
.end method
