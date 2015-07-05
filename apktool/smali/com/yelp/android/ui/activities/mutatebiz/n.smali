.class final Lcom/yelp/android/ui/activities/mutatebiz/n;
.super Ljava/lang/Object;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mutatebiz/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/activities/mutatebiz/ag",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        "Lcom/yelp/android/serializable/Category;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/database/m;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/database/m;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/n;->a:Lcom/yelp/android/database/m;

    .line 607
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/n;->b:Ljava/util/Set;

    .line 608
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 609
    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/n;->b:Ljava/util/Set;

    invoke-virtual {p1, v2}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs a([Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/serializable/Category;
    .locals 4

    .prologue
    .line 621
    const/4 v1, 0x0

    .line 622
    new-instance v2, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 623
    :goto_0
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 624
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 625
    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/n;->b:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    :goto_1
    return-object v0

    .line 629
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/n;->a:Lcom/yelp/android/database/m;

    invoke-virtual {v3, v0}, Lcom/yelp/android/database/m;->a(Lcom/yelp/android/serializable/Category;)Ljava/util/Collection;

    move-result-object v0

    .line 630
    invoke-interface {v2, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 591
    check-cast p1, [Lcom/yelp/android/serializable/Category;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/n;->a([Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    return-object v0
.end method
