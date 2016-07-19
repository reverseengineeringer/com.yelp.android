.class final Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;
.super Ljava/lang/Object;
.source "NearbyPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    iput-object p2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;->b:Ljava/util/ArrayList;

    .line 1096
    iput p3, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;->c:I

    .line 1097
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;ILcom/yelp/android/ui/activities/nearby/NearbyPageFragment$1;)V
    .locals 0

    .prologue
    .line 1089
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;-><init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;Ljava/util/ArrayList;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1101
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->NearbySeeMore:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "row_id"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;->b:Ljava/util/ArrayList;

    iget v3, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;->c:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/NearbyRow;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyRow;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1102
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;->b:Ljava/util/ArrayList;

    iget v3, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$b;->c:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/NearbyRow;

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/nearby/BusinessListComboActivity;->a(Landroid/content/Context;Lcom/yelp/android/serializable/NearbyRow;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 1105
    return-void
.end method
