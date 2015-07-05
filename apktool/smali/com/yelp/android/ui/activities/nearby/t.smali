.class Lcom/yelp/android/ui/activities/nearby/t;
.super Ljava/lang/Object;
.source "NearbyHeaderController.java"

# interfaces
.implements Lcom/yelp/android/util/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/util/ag",
        "<",
        "Lcom/yelp/android/serializable/RichSearchSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/s;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/s;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/t;->a:Lcom/yelp/android/ui/activities/nearby/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/RichSearchSuggestion;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    check-cast p1, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/t;->a(Lcom/yelp/android/serializable/RichSearchSuggestion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
