.class Lcom/yelp/android/ui/activities/nearby/a$1;
.super Ljava/lang/Object;
.source "NearbyHeaderController.java"

# interfaces
.implements Lcom/yelp/android/util/StringUtils$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/nearby/a;->a(Ljava/util/List;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/util/StringUtils$c",
        "<",
        "Lcom/yelp/android/serializable/RichSearchSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/a;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/a$1;->a:Lcom/yelp/android/ui/activities/nearby/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/RichSearchSuggestion;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    check-cast p1, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/a$1;->a(Lcom/yelp/android/serializable/RichSearchSuggestion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
