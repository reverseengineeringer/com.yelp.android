.class Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;
.super Ljava/lang/Object;
.source "ComboMapListActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/map/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/map/e$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$1;)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/serializable/f;)V

    .line 329
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 324
    check-cast p1, Lcom/yelp/android/serializable/f;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;->b(Lcom/yelp/android/serializable/f;)V

    return-void
.end method

.method public b(Lcom/yelp/android/serializable/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->b(Lcom/yelp/android/serializable/f;)V

    .line 334
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 324
    check-cast p1, Lcom/yelp/android/serializable/f;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$a;->a(Lcom/yelp/android/serializable/f;)V

    return-void
.end method
