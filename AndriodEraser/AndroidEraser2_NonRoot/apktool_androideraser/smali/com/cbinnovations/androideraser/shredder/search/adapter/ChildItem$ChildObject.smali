.class public Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;
.super Ljava/lang/Object;
.source "ChildItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildObject"
.end annotation


# instance fields
.field public final objects:[Ljava/lang/Object;

.field private final selectedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->selectedData:Ljava/util/ArrayList;

    .line 296
    iput-object p1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->title:Ljava/lang/String;

    .line 297
    iput-object p2, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->objects:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->objects:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 342
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->objects:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getObjects()[Ljava/lang/Object;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->objects:[Ljava/lang/Object;

    return-object v0
.end method

.method public getSelectedData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->selectedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedItemCount()I
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->selectedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->title:Ljava/lang/String;

    return-object v0
.end method

.method public select(Ljava/lang/Object;)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->selectedData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public selectAll()V
    .locals 2

    .line 330
    invoke-virtual {p0}, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->unselectAll()V

    .line 331
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->objects:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->selectedData:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->objects:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unselect(Ljava/lang/Object;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->selectedData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unselectAll()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/cbinnovations/androideraser/shredder/search/adapter/ChildItem$ChildObject;->selectedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
