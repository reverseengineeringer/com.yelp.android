.class Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3$1;
.super Ljava/lang/Object;
.source "BusinessAdapter.java"

# interfaces
.implements Lcom/yelp/android/util/StringUtils$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/a;)[Ljava/lang/String;
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
        "Lcom/yelp/android/serializable/RecentCheckIn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3$1;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/RecentCheckIn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RecentCheckIn;->b()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    check-cast p1, Lcom/yelp/android/serializable/RecentCheckIn;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3$1;->a(Lcom/yelp/android/serializable/RecentCheckIn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
