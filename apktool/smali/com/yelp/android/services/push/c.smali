.class public Lcom/yelp/android/services/push/c;
.super Ljava/lang/Object;
.source "InAppNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/services/push/c$a;
    }
.end annotation


# instance fields
.field public a:Lcom/yelp/android/database/h$c;

.field private b:Lcom/yelp/android/serializable/InAppNotification;

.field private c:Lcom/yelp/android/ui/widgets/InAppNotificationView;

.field private d:Landroid/content/Context;

.field private e:Lcom/yelp/android/services/push/c$a;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/yelp/android/services/push/c$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/push/c$1;-><init>(Lcom/yelp/android/services/push/c;)V

    iput-object v0, p0, Lcom/yelp/android/services/push/c;->a:Lcom/yelp/android/database/h$c;

    .line 120
    new-instance v0, Lcom/yelp/android/services/push/c$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/push/c$2;-><init>(Lcom/yelp/android/services/push/c;)V

    iput-object v0, p0, Lcom/yelp/android/services/push/c;->f:Landroid/view/View$OnClickListener;

    .line 133
    new-instance v0, Lcom/yelp/android/services/push/c$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/services/push/c$3;-><init>(Lcom/yelp/android/services/push/c;)V

    iput-object v0, p0, Lcom/yelp/android/services/push/c;->g:Landroid/view/View$OnClickListener;

    .line 162
    return-void
.end method

.method public static a()Lcom/yelp/android/cb/a;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->i()Lcom/yelp/android/cb/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/serializable/InAppNotification;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/services/push/c;->b:Lcom/yelp/android/serializable/InAppNotification;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/services/push/c;Lcom/yelp/android/serializable/InAppNotification;)Lcom/yelp/android/serializable/InAppNotification;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/yelp/android/services/push/c;->b:Lcom/yelp/android/serializable/InAppNotification;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/ui/widgets/InAppNotificationView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/services/push/c;->c:Lcom/yelp/android/ui/widgets/InAppNotificationView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/services/push/c;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/services/push/c;->f:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/services/push/c;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/services/push/c;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/services/push/c;)Lcom/yelp/android/services/push/c$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/services/push/c;->e:Lcom/yelp/android/services/push/c$a;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/services/push/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/services/push/c;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Landroid/content/Context;Lcom/yelp/android/ui/widgets/InAppNotificationView;Lcom/yelp/android/services/push/c$a;)V
    .locals 2

    .prologue
    .line 56
    iput-object p2, p0, Lcom/yelp/android/services/push/c;->d:Landroid/content/Context;

    .line 57
    iput-object p4, p0, Lcom/yelp/android/services/push/c;->e:Lcom/yelp/android/services/push/c$a;

    .line 58
    iput-object p3, p0, Lcom/yelp/android/services/push/c;->c:Lcom/yelp/android/ui/widgets/InAppNotificationView;

    .line 59
    iget-object v0, p0, Lcom/yelp/android/services/push/c;->c:Lcom/yelp/android/ui/widgets/InAppNotificationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/InAppNotificationView;->setVisibility(I)V

    .line 61
    invoke-static {}, Lcom/yelp/android/services/push/c;->a()Lcom/yelp/android/cb/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/push/c;->a:Lcom/yelp/android/database/h$c;

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/cb/a;->a(Ljava/lang/Class;Lcom/yelp/android/database/h$b;)V

    .line 63
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lcom/yelp/android/services/push/c;->b:Lcom/yelp/android/serializable/InAppNotification;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/yelp/android/services/push/c;->c:Lcom/yelp/android/ui/widgets/InAppNotificationView;

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/yelp/android/services/push/c;->c:Lcom/yelp/android/ui/widgets/InAppNotificationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/InAppNotificationView;->setVisibility(I)V

    .line 73
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 70
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
