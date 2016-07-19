.class public Ljp/line/android/sdk/exception/LineSdkLoginException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final error:Ljp/line/android/sdk/exception/LineSdkLoginError;

.field public final errorCode:I


# direct methods
.method public constructor <init>(Ljp/line/android/sdk/exception/LineSdkLoginError;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v1, v1}, Ljp/line/android/sdk/exception/LineSdkLoginException;-><init>(Ljp/line/android/sdk/exception/LineSdkLoginError;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljp/line/android/sdk/exception/LineSdkLoginError;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Ljp/line/android/sdk/exception/LineSdkLoginException;-><init>(Ljp/line/android/sdk/exception/LineSdkLoginError;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljp/line/android/sdk/exception/LineSdkLoginError;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p3, p1, p2}, Ljp/line/android/sdk/exception/LineSdkLoginException;->a(Ljava/lang/String;Ljp/line/android/sdk/exception/LineSdkLoginError;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Ljp/line/android/sdk/exception/LineSdkLoginException;->error:Ljp/line/android/sdk/exception/LineSdkLoginError;

    iput p2, p0, Ljp/line/android/sdk/exception/LineSdkLoginException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljp/line/android/sdk/exception/LineSdkLoginError;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Ljp/line/android/sdk/exception/LineSdkLoginException;-><init>(Ljp/line/android/sdk/exception/LineSdkLoginError;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljp/line/android/sdk/exception/LineSdkLoginError;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Ljp/line/android/sdk/exception/LineSdkLoginException;-><init>(Ljp/line/android/sdk/exception/LineSdkLoginError;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final a(Ljava/lang/String;Ljp/line/android/sdk/exception/LineSdkLoginError;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-ltz p2, :cond_1

    const-string/jumbo v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
