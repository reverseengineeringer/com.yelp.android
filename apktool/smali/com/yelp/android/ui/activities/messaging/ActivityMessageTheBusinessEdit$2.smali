.class Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit$2;
.super Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;
.source "ActivityMessageTheBusinessEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 113
    const v0, 0x7f07069d

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessEdit;->finish()V

    .line 115
    return-void
.end method
