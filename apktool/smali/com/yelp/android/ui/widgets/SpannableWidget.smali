.class public interface abstract Lcom/yelp/android/ui/widgets/SpannableWidget;
.super Ljava/lang/Object;
.source "SpannableWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;
    }
.end annotation


# static fields
.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-array v0, v4, [I

    sget v1, Lcom/yelp/android/co/a$b;->state_right:I

    aput v1, v0, v2

    sget v1, Lcom/yelp/android/co/a$b;->state_bottom:I

    aput v1, v0, v3

    sput-object v0, Lcom/yelp/android/ui/widgets/SpannableWidget;->d:[I

    .line 31
    new-array v0, v4, [I

    sget v1, Lcom/yelp/android/co/a$b;->state_left:I

    aput v1, v0, v2

    sget v1, Lcom/yelp/android/co/a$b;->state_top:I

    aput v1, v0, v3

    sput-object v0, Lcom/yelp/android/ui/widgets/SpannableWidget;->e:[I

    .line 34
    new-array v0, v3, [I

    sget v1, Lcom/yelp/android/co/a$b;->state_middle:I

    aput v1, v0, v2

    sput-object v0, Lcom/yelp/android/ui/widgets/SpannableWidget;->f:[I

    .line 35
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/yelp/android/ui/widgets/SpannableWidget;->g:[I

    .line 36
    new-array v0, v3, [I

    sget v1, Lcom/yelp/android/co/a$b;->state_clickable:I

    aput v1, v0, v2

    sput-object v0, Lcom/yelp/android/ui/widgets/SpannableWidget;->h:[I

    return-void
.end method


# virtual methods
.method public abstract setLeft(Z)V
.end method

.method public abstract setMiddle(Z)V
.end method

.method public abstract setRight(Z)V
.end method
